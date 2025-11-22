#ifndef INTERRUPTS_H
#define INTERRUPTS_H

#include "xscugic.h"
#include "xparameters.h"
#include "xil_types.h"

extern XScuGic InterruptController;
extern XScuGic_Config *GicConfig;

/**
 * Inicializa el controlador de interrupciones (hacerlo UNA sola vez en el sistema).
 * Devuelve XST_SUCCESS o XST_FAILURE.
 */
int interrupts_init(void);

/**
 * Conecta un handler a un vector IRQ (no habilita la IRQ).
 * irq_id: vector ID (p.ej. XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR)
 * handler: puntero a función (Xil_InterruptHandler)
 * arg: argumento del handler (por ejemplo la instancia DMA o IIC)
 */
int interrupts_connect(u32 irq_id, Xil_InterruptHandler handler, void *arg);

/**
 * Habilita la IRQ previamente conectada.
 */
void interrupts_enable(u32 irq_id);

/**
 * Deshabilita la IRQ.
 */
void interrupts_disable(u32 irq_id);

#endif // INTERRUPTS_H

