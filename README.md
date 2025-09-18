# Proyecto de Sistema Embebido en Tiempo Real con FreeRTOS sobre Cora Z7

Este proyecto implementa un sistema embebido en tiempo real utilizando **FreeRTOS** en la plataforma **Cora Z7 (Zynq-7000, ARM Cortex-A9 + PL)**.  
La solución se centra en la adquisición de datos de sensores, su procesamiento y la comunicación hacia el exterior, garantizando confiabilidad y eficiencia mediante un diseño híbrido que combina lógica programable (PL) y software en C sobre el procesador (PS).

---

## Objetivo
Desarrollar un sistema en tiempo real capaz de:
- Adquirir datos desde múltiples sensores (I2C, ADC/GPIO).  
- Procesar la información en hardware (PL) o software (FreeRTOS) según la criticidad.  
- Comunicar los resultados mediante UART, I2C y TCP/IP.  
- Mantener confiabilidad, escalabilidad y eficiencia energética dentro de los límites de un sistema embebido.  

---

## Arquitectura (Modelo Híbrido)
- **PL (Programmable Logic)**  
  - Control de adquisición de datos a nivel bajo.  
  - Transferencia mediante **DMA** hacia memoria compartida.  
  - Posible aceleración de procesamiento crítico mediante IPs personalizados.  

- **PS (Processing System, ARM Cortex-A9 con FreeRTOS)**  
  - Ejecución de tareas de alto nivel en C.  
  - Manejo de comunicaciones externas.  
  - Monitoreo y gestión de comandos.  
  - Sincronización de temporización y reloj.  

---

## Requerimientos

### Funcionales (FR)
- Adquisición de datos desde Sensor 1 (I2C) y Sensor 2 (GPIO/ADC).  
- Procesamiento de datos (filtrado, fusión, validación).  
- Transferencia de datos usando DMA y buffers circulares.  
- Sincronización de temporización y manejo de interrupciones.  
- Comunicación externa mediante UART, I2C y TCP.  
- Registro del estado del sistema y de errores.  

### No Funcionales (NFR)
- **Rendimiento**: Latencia <10 ms en rutas críticas; manejo de tasas de muestreo de hasta 1 kHz.  
- **Confiabilidad**: Recuperación ante fallos sin detener el sistema (uptime >99%).  
- **Escalabilidad**: Soporte para nuevos sensores/algoritmos con cambios mínimos.  
- **Eficiencia energética**: Consumo <5 W.  
- **Usabilidad/Mantenibilidad**: Depuración con Vitis y Tracealyzer.  
- **Seguridad**: Autenticación básica en comunicaciones TCP.  
- **Portabilidad**: Compatible con la familia Zynq-7000.  

---

## Tareas en FreeRTOS
- **IRQ Handler Task (alta prioridad)**: atiende interrupciones desde el PL y notifica a las demás tareas.  
- **Data Aggregation Task**: recolecta datos procesados desde DMA/buffers.  
- **Communication Task**: gestiona UART, I2C externo y TCP/IP.  
- **Monitoring/Logging Task**: reporta estado del sistema y errores.  
- **Command Handler Task**: procesa comandos externos para reconfiguración.  

---
![photo_5071493243228326724_y](https://github.com/user-attachments/assets/4cc8d167-1529-4e83-8d78-33dd658787ca)

## Requisitos del Sistema
- **Hardware**: Cora Z7 (Zynq-7000).  
- **Software**:  
  - FreeRTOS para Cortex-A9.  
  - Xilinx Vitis / Vivado.  
  - lwIP para comunicación TCP/IP.  

---

## Estructura del Repositorio
