# RTOS System – Zynq DMA + I2C Interrupt-Based Firmware

Este repositorio contiene el firmware y la estructura de proyecto para un sistema embebido basado en **Xilinx Zynq-7000**, utilizando:

- **DMA S2MM** con interrupciones  
- **I2C con interrupciones (XIicPs)**  
- **TCP/UART menú no bloqueante**  
- **Patrones de sincronización basados en semáforos**  
- **Diseño modular y limpio compatible con Vivado / Vitis**

El objetivo principal de esta reorganización fue **limpiar por completo el repositorio**, eliminando archivos generados automáticamente por Vivado y Vitis, dejando únicamente:

- Código fuente relevante  
- Scripts reproducibles  
- Estructura legible para investigación / docencia  
- Documentación técnica extendida

> **Nota importante:**  
> No se han modificado las funciones del firmware.  
> Únicamente se reorganizó el repositorio y se documentaron patrones de diseño empleados.

---

# ✨ Objetivos del repositorio

1. Mantener una **estructura estable y mínima**, libre de carpetas generadas (`.vitis/`, `Debug/`, `workspace/`, `.runs/`, etc.).
2. Documentar el **flujo de build Vivado/Vitis** desde cero.
3. Exponer la arquitectura del firmware, especialmente el uso de:
   - DMA con interrupciones  
   - I2C con interrupciones  
   - Semáforo para condition evaluation  
4. Facilitar la reproducción del sistema por terceros.

---

# 📂 Estructura del repositorio

La estructura final se discute y detalla en la sección de [sources](src/).

```
/
├── src/                      # Código fuente del firmware
│   ├── interrupts.c          # Módulo dedicado a interrupciones
│   ├── interrupts.h
│   ├── dma.c                 # Manejo del DMA y callbacks
│   ├── iic.c                 # Lectura I2C vía interrupciones
│   ├── tcp_menu.c            # Menú TCP/UART no bloqueante
│   ├── main.c
│   └── platform.c
│
├── scripts/
│   ├── build_vivado.tcl      # Reconstrucción del BD y bitstream
│   └── export_hw.tcl         # Exportación automatizada del archivo XSA
│
├── export/                   # XSA exportado para Vitis
├── README.md
└── LICENSE (opcional)
```

---

# 🧩 Patrón de sincronización: Semáforo DMA + I2C  
### (Condition Evaluation)

En el firmware se utiliza un patrón de coordinación basado en **semáforos por condición**, evitando bloqueo activo.

### Concepto

El sistema debe transmitir datos **solo cuando**:

- (A) DMA terminó correctamente una transferencia **y**
- (B) I2C entregó una lectura válida  
- → Entonces se habilita la acción (C): enviar datos / actualizar estado / procesar menú

Esto evita ifs anidados, reduce acoplamiento y asegura un loop principal no bloqueante.

### Implementación (simplificada)

```c
volatile bool dma_done = false;
volatile bool iic_done = false;

void DMA_IntrHandler(...) {
    dma_done = true;
}

void IIC_IntrHandler(...) {
    iic_done = true;
}

void main_loop() {
    if (dma_done && iic_done) {
        process_data();     // Acción C
        dma_done = false;
        iic_done = false;
    }

    run_menu_non_blocking();  // TCP / UART
}
```

Este patrón:

- Evita busy-polling  
- Evita que el usuario "cuelgue" el menú  
- Hace el sistema determinístico y concurrente dentro de límites bare-metal

---

# 📘 Build & Run Guide (Vivado + Vitis)

### Requisitos

- Vivado 2022.2+  
- Vitis 2022.2+  
- Cable JTAG  
- Plataforma Zynq-7000  

---

# 🛠️ 1. Reconstrucción del hardware (Vivado)

### Opción A — Abrir proyecto

```
File → Open Project → <repo>/fpga/Vivado/
```

### Opción B — Build desde TCL

```
Tools → Run Tcl Script → ./scripts/build_vivado.tcl
```

---

# 🔧 2. Exportar hardware para Vitis

```
File → Export → Export Hardware (Include Bitstream)
```

Guardar en:

```
export/rtos_sys_wrapper.xsa
```

---

# 💻 3. Compilar firmware en Vitis

```
vitis -workspace ./vitis_ws
```

Crear plataforma → importar XSA → copiar `src/*` → compilar.

---

# ▶️ 4. Programación y ejecución

1. Programar FPGA  
2. Ejecutar desde Vitis → Launch on Hardware  

---

# 🔄 Diagrama de flujo (texto)

```
POWER ON
 → Init Drivers
 → Main Loop
      ↳ DMA IRQ → dma_done=1
      ↳ IIC IRQ → iic_done=1
      IF dma_done && iic_done → process_data()
      run_menu_non_blocking()
      LOOP
```

---

# 👥 Créditos

Autora: **Fernanda Zapata Bascuñan**  

