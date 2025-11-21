#ifndef DMA_WRITE_H
#define DMA_WRITE_H

#include "xgpio.h"
#include "xaxidma.h"
#include "xparameters.h"
#include "xil_types.h"
#include "xscugic.h"
#include "sleep.h"
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

// Definiciones de constantes
#define DMA0_DEVICE_ID XPAR_AXIDMA_0_DEVICE_ID
#define DMA1_DEVICE_ID XPAR_AXIDMA_1_DEVICE_ID
#define GPIO_DEV_ID XPAR_GPIO_0_DEVICE_ID
#define DMA_TRANSFER_SIZE 64
#define INTC_DEVICE_ID XPAR_SCUGIC_SINGLE_DEVICE_ID
#define DMA0_RX_INTR_ID XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR
#define DMA1_RX_INTR_ID XPAR_FABRIC_AXI_DMA_1_S2MM_INTROUT_INTR

// Declaraciones de variables externas
extern XGpio AxiGpio;
extern XAxiDma DMA0;
extern XAxiDma DMA1;
extern u64 data_sensor1_to_zynq[DMA_TRANSFER_SIZE];
extern u64 data_sensor2_to_zynq[DMA_TRANSFER_SIZE];
extern UINTPTR BuffAddr0;
extern UINTPTR BuffAddr1;
extern u8 test_buf[65536];
extern u32 status;
extern SemaphoreHandle_t xDma0Semaphore;
extern SemaphoreHandle_t xDma1Semaphore;
extern XScuGic Intc;

// Prototipos de funciones
int dma_initialization(void);
void vDmaTask(void *pvParameters);
void reset_gpio(void);
int dma_data_ready_callback(void);
int InitInterrupts(void);
void Dma0IntrHandler(void *CallbackRef);
void Dma1IntrHandler(void *CallbackRef);

#endif /* DMA_WRITE_H */
