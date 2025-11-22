# Sistema de Adquisición de Sensores – Plataforma Zynq / FreeRTOS / TCP / I2C / DMA

Este repositorio contiene el proyecto completo de adquisición de datos sobre la plataforma
**Xilinx Zynq-7000**, integrando:

- Procesador **Cortex-A9** (PS) ejecutando FreeRTOS  
- FPGA (PL) para captura de datos mediante **DMA**  
- Comunicación con usuario vía **TCP**, **UART**  
- Configuración de sensores vía **I2C**  
- Módulos de prueba en Verilog con interfaz **AXI-Stream**

Este repositorio **no modifica el código funcional** respecto de la versión original;
sin embargo, **sí reorganiza completamente la estructura del proyecto**, eliminando archivos
generados automáticamente por Vivado/Vitis y dejando únicamente el código fuente relevante.

---

# 1. Objetivos del Proyecto

1. Implementar una solución embebida completa para la adquisición, transmisión y control de datos.  
2. Integrar módulos del PL con el PS a través de DMA y AXI Stream.  
3. Validar comunicaciones en tiempo real mediante TCP, UART e I2C.  
4. Verificar y validar el correcto funcionamiento de la aplicación final.  

---

# 2. Uso de módulos de prueba (snow.v y white.v)

Para simular el comportamiento de los sensores reales conectados al DMA, se desarrollaron dos módulos Verilog *dummy*:

- **snow.v** – genera un conteo descendente
- **white.v** – genera un conteo ascendente

Ambos módulos utilizan **AXI Stream**, facilitando la integración con el sistema.

Estos módulos permiten validar:

- Funcionamiento del DMA  
- Integridad de la transferencia PL → PS  
- Sincronización con el servidor TCP y con el driver I2C  

Los módulos se encuentran en:
([/src](src/))


---

# 3. Integración del sistema en Vivado/Vitis

Los módulos `snow.v` y `white.v` fueron integrados mediante el *Block Design* de Vivado,
conectándolos al **AXI DMA** y al procesador **Cortex-A9**.

En el PS se configuraron y habilitaron los protocolos:

- **TCP** para comunicación con el usuario  
- **I2C** para configurar un expansor I²C que paraleliza datos de sensores  
- **UART** para depuración  
- **DMA** para la transferencia PL → PS  

Esta arquitectura híbrida permite:

- Bajar la latencia  
- Mantener sincronización entre protocolos  
- Maximizar el rendimiento del sistema de adquisición  

---

# 4. Validación del Sistema

### 4.1 Conectividad TCP
El primer test se realizó usando:

> ping 192.168.1.10

Confirmando que el servidor TCP estaba operativo.

### 4.2 Configuración del primer sensor vía I2C
Para verificar la configuración del sensor, se enviaron las palabras por I2C y se analizaron las respuestas en el handler de interrupciones del controlador I2C. Este manejador registra todas las señales relevantes del bus, incluyendo ACKs, NACKs de finalización y cualquier evento asociado a errores o pérdida de palabras en la comunicación serie.
Dado que no se disponía de un Arduino UNO u otra placa que actuara como dispositivo esclavo, se decidió utilizar los NACKs generados por la ausencia de un receptor como mecanismo de validación. Así, se comprobó que por cada palabra enviada se recibiera un NACK correspondiente, confirmando que la secuencia de configuración se transmitió correctamente.

Una vez configurado el sensor, se transmitió vía TCP:

> Configuration sensor 1 successful

Además, se validó la comunicación I2C operando a baja velocidad (100 kHz) y se comprobó que el servidor TCP permaneciera activo durante todo el proceso, garantizando la continuidad de las comunicaciones posteriores.

### 4.3 Validación DMA (PL → PS)
Se activaron `snow.v` y `white.v` para confirmar las transferencias DMA.

Los datos recibidos fueron mostrados por UART, verificando:

- Conteo ascendente correcto (snow.v)  
- Conteo descendente correcto (white.v)  
- Integridad de los 256 elementos transmitidos.

Cabe destacar que la configuración del protocolo AXI se diseñó para operar con palabras de 32 bits. Esta decisión se fundamenta en que el procesador Zynq trabaja de manera nativa con ese ancho de palabra, lo que permite una transmisión más eficiente y alineada entre el sistema embebido y la memoria DDR, reduciendo ciclos adicionales de lectura/escritura y mejorando el rendimiento general del sistema.

---

# 5. Conclusiones

A. La arquitectura híbrida PS + PL proporciona un balance óptimo entre rendimiento y complejidad.  
B. Los módulos Verilog de prueba permitieron validar el sistema antes de conectar hardware real.  
C. Las pruebas confirmaron que el sistema cumple con:

- Adquisición en tiempo real  
- Procesamiento correcto  
- Comunicación TCP / UART estable  
- Configuración I2C coherente  
- Transferencia DMA confiable  

D. Dividir tareas críticas entre PL y PS es la estrategia más efectiva para sistemas embebidos RT.  
E. El consumo medido (≈1.254 W) es adecuado para la Cora Z7 y confirma la eficiencia del sistema.


---

# 6. Notas de Build & Run

### 6.1 Dependencias
- Xilinx Vivado 2020.x o 2021.x  
- Xilinx Vitis (o SDK)  
- FreeRTOS para Zynq  
- lwIP para TCP/IP  

### 6.2 Para reconstruir el proyecto Vivado
1. Abrir Vivado  
2. Crear un proyecto nuevo  
3. Importar el Block Design del SoC  
4. Importar los módulos `snow.v` y `white.v`  
5. Regenerar el wrapper y exportar el hardware  

### 6.3 Para reconstruir el proyecto Vitis
1. Crear plataforma a partir del `.xsa` exportado  
2. Importar el contenido de `lwip_server/src`  
3. Habilitar lwIP, TCP, UART, I2C y DMA  
4. Compilar y cargar en la tarjeta  

---

# 7. Comentarios de patrón de diseño (Firmware)

Se utiliza un patrón de **evaluación por condición** usando semáforos:

> “Si se da A y B, entonces comunico C”.

Ejemplos:

- IRQ de DMA + bandera de I2C completado → enviar datos por TCP  
- IRQ de I2C + timeout válido → notificar configuración finalizada  
- IRQ de DMA + buffer listo → despertar tarea de envío  

Este esquema evita polling innecesario, reduce carga del CPU y mejora la latencia del sistema.

---

# 8. Licencia

MIT – libre uso académico.


