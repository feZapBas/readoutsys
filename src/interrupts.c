#include "interrupts.h"
#include "xil_exception.h"
#include "xil_printf.h"

XScuGic InterruptController;
XScuGic_Config *GicConfig = NULL;

int interrupts_init(void)
{
    int Status;

    GicConfig = XScuGic_LookupConfig(XPAR_SCUGIC_SINGLE_DEVICE_ID);
    if (GicConfig == NULL) {
        xil_printf("GIC LookupConfig failed\n\r");
        return XST_FAILURE;
    }

    Status = XScuGic_CfgInitialize(&InterruptController, GicConfig, GicConfig->CpuBaseAddress);
    if (Status != XST_SUCCESS) {
        xil_printf("GIC CfgInitialize failed\n\r");
        return XST_FAILURE;
    }

    Status = XScuGic_SelfTest(&InterruptController);
    if (Status != XST_SUCCESS) {
        xil_printf("GIC SelfTest failed\n\r");
        // no fatal; continuar a veces está bien, pero lo devolvemos como fallo
        return XST_FAILURE;
    }

    /* Inicializar excepciones y registrar el handler del GIC (solo una vez) */
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                                 (Xil_ExceptionHandler)XScuGic_InterruptHandler,
                                 &InterruptController);

    /* No habilitamos globalmente aqui; cada IRQ se habilita por separado. */
    return XST_SUCCESS;
}

int interrupts_connect(u32 irq_id, Xil_InterruptHandler handler, void *arg)
{
    int Status;

    if (GicConfig == NULL) {
        xil_printf("GIC not initialized. Call interrupts_init() first!\n\r");
        return XST_FAILURE;
    }

    Status = XScuGic_Connect(&InterruptController, irq_id, handler, arg);
    if (Status != XST_SUCCESS) {
        xil_printf("Failed to connect IRQ %u\n\r", irq_id);
        return XST_FAILURE;
    }

    return XST_SUCCESS;
}

void interrupts_enable(u32 irq_id)
{
    XScuGic_Enable(&InterruptController, irq_id);
}

void interrupts_disable(u32 irq_id)
{
    XScuGic_Disable(&InterruptController, irq_id);
}

