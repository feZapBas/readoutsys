## Constrains

El proyecto utiliza archivos XDC para definir los requisitos físicos y temporales necesarios para que el sistema funcione correctamente en la FPGA. En particular, los constraints permiten:

* Asignar pines de la FPGA a las señales del sistema (GPIO, I2C, relojes, interfaces AXI-Stream).

* Definir relojes (frecuencia, origen y relaciones) para asegurar la correcta sincronización entre PL y PS.

* Garantizar timing (setup/hold) en rutas críticas como DMA → AXI Stream → PS.

* Especificar propiedades eléctricas (IOSTANDARD, pull-ups, drive strength) para asegurar compatibilidad con el hardware externo.

En este proyecto, los constraints son esenciales para:

* Mantener estable la lectura DMA desde los módulos snow y white.

* Sincronizar las interfaces AXI-Stream con el procesador Cortex-A9.

* Garantizar una comunicación confiable mediante I2C, UART y TCP.

Un XDC correcto evita errores de timing, datos corruptos e inestabilidad en el sistema embebido.
