# Proyecto Readout System – Organización del Repositorio

Este repositorio contiene el código fuente asociado al sistema **Readout System** basado en **Zynq**, con módulos en **FPGA (Verilog)** y un servidor **TCP/FreeRTOS/LWIP** ejecutándose en Vitis.

Este documento describe:

* Los cambios estructurales aplicados recientemente.
* El estado actual del repositorio.
* La nueva organización interna del proyecto.
* Cómo navegar el código de manera eficiente.

---

#  Cambios realizados 

Durante esta actualización **NO se modificó ningún código funcional** del sistema.
Solo se reorganizó el repositorio para hacerlo más limpio, portable y profesional.

Los cambios aplicados incluyen:

###  1. **Eliminación completa de archivos generados automáticamente**

Se eliminaron todos los artefactos generados por:

* Vivado
* Vitis / SDK
* FreeRTOS IDE
* Archivos temporales de plataforma
* Bitstreams, metadata interna, logs, cachés y directorios `_ide/`, `.metadata/`, etc.

Estos archivos no deben ser versionados, ya que se pueden regenerar.

### 2. **Se añadió un `.gitignore` robusto**

Incluye reglas para excluir:

* Carpetas `rtos_sys/`, `rtos_sys_wrapper/`, `.vitis/`
* Proyectos temporales de Vitis (`.project`, `.cproject`, `*.sprj`)
* Archivos generados de Vivado (`.xpr`, `.runs/`, `.cache/`, `.hw/`, bitstreams, xsa, etc.)
* Archivos de sistema (`*.log`, `*.jou`, `*.tmp`)

###  3. **Reorganización lógica del código**

Se creó una estructura estándar tipo proyecto de firmware + FPGA:

```
readoutsys/
├── src/               → Código C principal del servidor LWIP / FreeRTOS
├── include/           → Headers públicos
├── cmake/             → Archivos de configuración CMake
├── docs/              → Documentación técnica
├── hardware/          → Módulos Verilog del sistema 
├── .gitignore         → Nueva versión
└── README.md          → Este archivo
```

###  4. **Eliminación de proyectos heredados**

Se removieron totalmente los directorios:

* `rtos_sys/`
* `rtos_sys_wrapper/`
* `RemoteSystemsTempFiles/`
* `_ide/`

Estos provenían de exportaciones de Vitis/Vivado.

# Estructura actual del repositorio

A continuación se muestra la estructura limpia del repositorio, con vínculos internos:

## **Código C (Firmware)**

* [`src/`](./src)

  * Contiene los archivos fuente del servidor LWIP/TCP, I2C, DMA y lógica FreeRTOS.

* [`include/`](./include)

  * Headers asociados a los módulos C.

## **FPGA – Verilog**

* [`fpga/src/`](./fpga/src)

  * Módulos Verilog utilizados en el sistema.

## **Configuración y build system**

* [`cmake/`](./cmake)

  * Archivos de configuración para futuros builds reproducibles con CMake.

* [`hardware/`](./hardware)

  * Definiciones de plataforma que **no** son generados automáticamente.

## **Documentación**

* [`docs/`](./docs)

  * Diagramas, notas, especificaciones.

## **Archivos raíz**

* [`.gitignore`](./.gitignore)
* [`README.md`](./README.md)

---

# Estado del repositorio

1. **Código funcional intacto**
2. **Estructura reorganizada profesionalmente**
3. **Archivos basura eliminados**
4. **Repositorio listo para colaboración, issues y CI/CD**

---
**Estructura final del repositorio**

A continuación se presenta la estructura reorganizada. Puedes hacer clic en cada elemento para navegar directamente dentro del repositorio.
proyecto-lwip server on Cora Z7
│
├── hardware
│ ├──  verilog
│ │ ├── [snow.v](hardware/verilog/snow.v)
│ │ ├── [white.v](hardware/verilog/white.v)
│ │ ├── [timestamp.v](hardware/verilog/timestamp.v)
│ │ ├── [T1.v](hardware/verilog/T1.v)
│ │ └── ...
│ ├── ip_blocks
│ └── constraints
│
├── software
│ ├── lwip_tcp_server
│ │ ├──  [freertos_tcp_perf_server.c](src/freertos_tcp_perf_server.c)
│ │ └── ...
│ ├──  dma_drivers
│ ├ ├──  [dma_write.c](src/dma_write.c)
│ │ └── ...
│ └──  iic_drivers
│ ├ ├──  [iic_task.c](src/iic_task.c)
│ │ └── ...
│
├──  docs
│ ├── readme.md
│ ├──  diagrams
│ │ ├──  arquitectura_general.png
│ │ └──  flujo_datos.png
│ └──  notas_tecnicas
│
├──  images
│ └── agregar
│
└── LICENSE

Actualizaciones en los modulos
# Arquitectura de interrupciones y patrón DMA + I2C

## Resumen del cambio
En la versión anterior cada módulo (DMA e I2C) inicializaba por separado el controlador de interrupciones (GIC) y las excepciones del procesador. Esto provocaba que el segundo módulo que ejecutase esta inicialización sobrescribiera la configuración del primero (handlers, prioridades, tabla de excepciones), dando lugar a pérdida de IRQs, handlers que no se ejecutan y comportamiento errático.

**Solución aplicada**:
- Se creó un módulo central `interrupts.c` / `interrupts.h` que inicializa el GIC **una sola vez** (función `interrupts_init()`).
- Cada driver (DMA, IIC) ya **no inicializa el GIC**. En su lugar:
  - usan `interrupts_connect(irq_id, handler, arg)` para conectar su ISR, y
  - llaman `interrupts_enable(irq_id)` para habilitar su IRQ.
- Las ISRs siguen siendo las mismas; la lógica FreeRTOS y los semáforos de cada módulo no fueron modificados (solo reubicados las llamadas al GIC).

## ¿Por qué es necesario inicializar el GIC una sola vez?
- `XScuGic_CfgInitialize()` y `Xil_ExceptionRegisterHandler()` configuran la tabla de excepciones y estructuras internas del controlador. Ejecutar esto más de una vez con el mismo objeto global puede:
  - sobrescribir handlers,
  - eliminar conexiones previas,
  - dejar el GIC en estado inestable.
- Inicializar el GIC una sola vez y luego *conectar/habilitar* IRQs es la práctica segura y recomendada.

## Cómo integrar ordenar las rutinas
1. En el archivo principal `main()` o rutina de arranque `zynq_interruptions`:
   ```c
   if (interrupts_init() != XST_SUCCESS) {
       xil_printf("Interrupts init failed\n\r");
       return -1;
   }

   /* Inicializa drivers (DMA / IIC) */
   if (dma_initialization() != XST_SUCCESS) { ... }
   StartIICTask();
   Se aconseja realizar esto en un unico archivo e inicializarlos antes del main.c, de forma de evitar problemas de inicializacion de los perisfericos
## Últimos detalles y recomendaciones prácticas
- La lógica de los semáforos **No cambio** ni la estructura de las tareas — solo se reorganizo las inicializaciones del GIC.
- Siempre revisar que el `Makefile`/proyecto incluya `interrupts.c` al compilar y que los archivos fuente estén en las rutas esperadas.
- Se recomienda inicializar las prioridades en el archivo dedicado a las interrupciones.

