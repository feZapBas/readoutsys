/* dma_write.c (versión corregida) */

#include "xgpio.h"
#include "xaxidma.h"
#include "xparameters.h"
#include "xil_types.h"
#include "sleep.h"
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
#include "lwip/sockets.h"
#include <string.h>
#include <stdio.h>

#include "interrupts.h" /* NEW: módulo de interrupciones centralizado */

/*------------------- GLOBALS ------------------*/
XGpio_Config *GpioCfgPtr;
XGpio AxiGpio;
XAxiDma DMA0;
XAxiDma DMA1;
XAxiDma_Config *DMA0_CONFIG;
XAxiDma_Config *DMA1_CONFIG;

#define DMA0_DEVICE_ID      XPAR_AXIDMA_0_DEVICE_ID
#define DMA1_DEVICE_ID      XPAR_AXIDMA_1_DEVICE_ID
#define GPIO_DEV_ID         XPAR_GPIO_0_DEVICE_ID
#define DMA_TRANSFER_SIZE   64

u32 Length = sizeof(u32) * 64;
u32 num_elements = DMA_TRANSFER_SIZE / sizeof(u64);
u32 data_sensor1_to_zynq[64];
u32 data_sensor2_to_zynq[64];
UINTPTR BuffAddr0 = (UINTPTR)data_sensor1_to_zynq;
UINTPTR BuffAddr1 = (UINTPTR)data_sensor2_to_zynq;
u8 test_buf[65536];
u32 status;

/* Semáforos para sincronización de DMA en FreeRTOS */
SemaphoreHandle_t xDma0Semaphore;
SemaphoreHandle_t xDma1Semaphore;

/* IRQ IDs (seguir usando los defines del BSP) */
#define DMA0_RX_INTR_ID XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR
#define DMA1_RX_INTR_ID XPAR_FABRIC_AXI_DMA_1_S2MM_INTROUT_INTR

/* TCP/DMA */
static int dmaTcpSocket = -1;       // socket que usará DMA
static SemaphoreHandle_t xTcpSem;   // semáforo para notificar tarea DMA

void initTcpForDma(void) {
    xTcpSem = xSemaphoreCreateBinary();
}

void setTcpSocketForDma(int sock) {
    dmaTcpSocket = sock;
    if (xTcpSem != NULL) {
        xSemaphoreGive(xTcpSem);   // despierta la tarea DMA
    }
}

int getTcpSocketForDma(void) {
    return dmaTcpSocket;
}

SemaphoreHandle_t getTcpSemaphore(void) {
    return xTcpSem;
}

/*------------------- CALLBACKS ------------------*/
static void Dma0RxDoneCallback(void *CallBackRef, u32 IrqMask, int *IgnorePtr) {
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    if (xDma0Semaphore) {
        xSemaphoreGiveFromISR(xDma0Semaphore, &xHigherPriorityTaskWoken);
    }
    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}

static void Dma1RxDoneCallback(void *CallBackRef, u32 IrqMask, int *IgnorePtr) {
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    if (xDma1Semaphore) {
        xSemaphoreGiveFromISR(xDma1Semaphore, &xHigherPriorityTaskWoken);
    }
    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}

/* Handler de interrupciones DMA (sigue igual) */
void Dma0IntrHandler(void *CallbackRef) {
    u32 IrqStatus;
    int Ignore;

    IrqStatus = XAxiDma_IntrGetIrq(&DMA0, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrAckIrq(&DMA0, IrqStatus, XAXIDMA_DEVICE_TO_DMA);

    if (IrqStatus & XAXIDMA_IRQ_IOC_MASK) {
        Dma0RxDoneCallback(CallbackRef, IrqStatus, &Ignore);
    }
}

void Dma1IntrHandler(void *CallbackRef) {
    u32 IrqStatus;
    int Ignore;

    IrqStatus = XAxiDma_IntrGetIrq(&DMA1, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrAckIrq(&DMA1, IrqStatus, XAXIDMA_DEVICE_TO_DMA);

    if (IrqStatus & XAXIDMA_IRQ_IOC_MASK) {
        Dma1RxDoneCallback(CallbackRef, IrqStatus, &Ignore);
    }
}

/*------------------- DMA INIT ------------------*/
int dma_initialization(void) {
    /* Limpieza de caché y chequeo alineación */
    Xil_DCacheFlushRange(BuffAddr0, DMA_TRANSFER_SIZE);
    Xil_DCacheFlushRange(BuffAddr1, DMA_TRANSFER_SIZE);

    if ((BuffAddr0 & 0x07) || (BuffAddr1 & 0x07)) {
        xil_printf("DMA buffer not 8-byte aligned!\n\r");
        return XST_FAILURE;
    }

    /* GPIO */
    GpioCfgPtr = XGpio_LookupConfig(GPIO_DEV_ID);
    if (!GpioCfgPtr) return XST_FAILURE;

    status = XGpio_CfgInitialize(&AxiGpio, GpioCfgPtr, GpioCfgPtr->BaseAddress);
    if (status != XST_SUCCESS) return XST_FAILURE;

    /* DMA0 */
    DMA0_CONFIG = XAxiDma_LookupConfig(DMA0_DEVICE_ID);
    if (!DMA0_CONFIG) return XST_FAILURE;

    status = XAxiDma_CfgInitialize(&DMA0, DMA0_CONFIG);
    if (status != XST_SUCCESS) return XST_FAILURE;

    /* DMA1 */
    DMA1_CONFIG = XAxiDma_LookupConfig(DMA1_DEVICE_ID);
    if (!DMA1_CONFIG) return XST_FAILURE;

    status = XAxiDma_CfgInitialize(&DMA1, DMA1_CONFIG);
    if (status != XST_SUCCESS) return XST_FAILURE;

    /* Deshabilitar interrupciones DMA antes de habilitar conexiones */
    XAxiDma_IntrDisable(&DMA0, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrDisable(&DMA1, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

    for (int i = 0; i < DMA_TRANSFER_SIZE; i++) {
        data_sensor1_to_zynq[i] = 0;
        data_sensor2_to_zynq[i] = 0;
    }

    /* Crear semáforos */
    xDma0Semaphore = xSemaphoreCreateBinary();
    xDma1Semaphore = xSemaphoreCreateBinary();
    if (!xDma0Semaphore || !xDma1Semaphore) return XST_FAILURE;

    /* NOTA: la inicialización del GIC se hace *una sola vez* externamente.
       Aquí sólo conectamos los handlers y habilitamos las IRQs usando el módulo interrupts.c
    */
    if (interrupts_connect(DMA0_RX_INTR_ID, (Xil_InterruptHandler)Dma0IntrHandler, &DMA0) != XST_SUCCESS) {
        xil_printf("Failed to connect DMA0 IRQ\n\r");
        return XST_FAILURE;
    }
    interrupts_enable(DMA0_RX_INTR_ID);

    if (interrupts_connect(DMA1_RX_INTR_ID, (Xil_InterruptHandler)Dma1IntrHandler, &DMA1) != XST_SUCCESS) {
        xil_printf("Failed to connect DMA1 IRQ\n\r");
        return XST_FAILURE;
    }
    interrupts_enable(DMA1_RX_INTR_ID);

    reset_gpio();
    xil_printf("DMA and GPIO initialized successfully.\n\r");
    XGpio_DiscreteWrite(&AxiGpio, 1, 1);
    return XST_SUCCESS;
}

/*------------------- RESET GPIO ------------------*/
void reset_gpio(void) {
    XGpio_DiscreteWrite(&AxiGpio, 1, 0);
    usleep(20);
    XGpio_DiscreteWrite(&AxiGpio, 1, 1);
}

/*------------------- DMA TASK ------------------*/
void vDmaTask(void *pvParameters) {

    int sock = (int)(uintptr_t) pvParameters; // socket TCP del cliente
    u32 num_elements = DMA_TRANSFER_SIZE;
    int status0, status1;
    for (;;) {
        // DMA0
        status0 = XAxiDma_SimpleTransfer(&DMA0, BuffAddr0, Length, XAXIDMA_DEVICE_TO_DMA);
        if (status0 != XST_SUCCESS) { xil_printf("DMA0 transfer failed!\r\n");}
        for (int i = 0; i < DMA_TRANSFER_SIZE; i++) // solo los primeros 8 elementos
            xil_printf("DMA0[%d] = %u\n\r", i, data_sensor1_to_zynq[i]);
        for (int i = 0; i < DMA_TRANSFER_SIZE; i++)
            data_sensor1_to_zynq[i] = i;

        if (xSemaphoreTake(xDma0Semaphore, portMAX_DELAY) == pdTRUE) {
            xil_printf("DMA0 done, sending data...\r\n");
            int sent = lwip_write(sock, data_sensor1_to_zynq, DMA_TRANSFER_SIZE);
            if (sent < 0) { xil_printf("TCP send failed!\r\n"); break; }
        }

        // DMA1
        status1 = XAxiDma_SimpleTransfer(&DMA1, BuffAddr1, Length, XAXIDMA_DEVICE_TO_DMA);
        if (status1 != XST_SUCCESS) { xil_printf("DMA1 transfer failed!\r\n"); }
        for (int i = 0; i < DMA_TRANSFER_SIZE; i++) // solo los primeros 8 elementos
            xil_printf("DMA1[%d] = %u\n\r", i, data_sensor2_to_zynq[i]);
        if (xSemaphoreTake(xDma1Semaphore, portMAX_DELAY) == pdTRUE) {
            xil_printf("DMA1 done, sending data...\r\n");
            int sent = lwip_write(sock, data_sensor2_to_zynq, DMA_TRANSFER_SIZE);
            if (sent < 0) { xil_printf("TCP send failed!\r\n"); break; }
        }

        vTaskDelay(pdMS_TO_TICKS(100)); // ajustar según velocidad de adquisición
    }

    lwip_close(sock);
    vTaskDelete(NULL);
}
