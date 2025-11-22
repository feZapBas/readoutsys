# Servidor TCP con FreeRTOS y LwIP

Este proyecto implementa un servidor TCP basado en FreeRTOS y LwIP sobre la arquitectura Zynq.  
El servidor puede recibir múltiples intentos de conexión, pero atiende **una conexión a la vez**.  
La IP se asigna por DHCP o mediante una configuración estática predeterminada.

---

## Configuración del Servidor TCP

Las opciones principales pueden modificarse en el archivo `freertos_lwip_tcp_server.h`:

- **INTERIM_REPORT_INTERVAL**  
  Intervalo (segundos) para imprimir reportes intermedios.  
  *Valor por defecto: 5 segundos.*

- **TCP_SERVER_PORT**  
  Puerto TCP donde escucha el servidor.  
  *Valor por defecto: 5001.*

Si **LWIP_DHCP = 1**, la placa obtiene la IP desde un servidor DHCP.  
Si DHCP falla o está deshabilitado, se usa la siguiente IP por defecto:

> IP Address : 192.168.1.10
> Netmask    : 255.255.255.0
> Gateway    : 192.168.1.1
> MAC Address: 00:0a:35:00:01:02

---

## Habilitar IPv6

### A) Desde la GUI del SDK

1. Crear la aplicación `lwip_tcp_perf` desde XSDK.  
2. Abrir **BSP Settings** →  
   freertos10_xilinx → lwip202 → ipv6_enable → seleccionar **true**.  
3. Compilar el proyecto.

### B) Desde el archivo `.mss`

Editar antes de generar el proyecto:

> PARAMETER ipv6_enable = true

Si **LWIP_IPV6** está activado, la placa obtiene una dirección link-local IPv6:

> FE80:0:0:0:20A:35FF:FE00:102


Esta configuración puede modificarse en `main.c`.

La lógica completa del servidor TCP está en:  
`freertos_lwip_tcp_server.c`.

---

## Ejecución del Servidor TCP

Cargar el programa en la placa y luego ejecutar desde la PC:

### IPv4
> iperf -c <IP_de_la_placa> -i 5 -t 300 -w 2M
### IPv6
> iperf -V -c <IP_de_la_placa>%<interfaz> -i 5 -t 300 -w 2M

**Nota:** Para IPv6 link-local es obligatorio especificar la interfaz.

---

## Más Información

Documentación oficial de FreeRTOS+TCP:  
https://www.freertos.org/Documentation/03-Libraries/02-FreeRTOS-plus/02-FreeRTOS-plus-TCP/embeddedtcp
