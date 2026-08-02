# appletsRufi

`appletsRufi` es un repositorio de scripts en Bash diseñados para proporcionar una interfaz moderna, funcional y rápida mediante **Rofi**.

## Funcionalidades principales

- **Gestión de Energía**: Menús para suspender, reiniciar, apagar o bloquear la sesión (`powermenu.sh`, `rofi-power.sh`).
- **Control de Sistema**: Ajustes rápidos de volumen, brillo y gestión de batería (`volume.sh`, `brightness.sh`, `battery.sh`).
- **Utilidades**: Lanzadores rápidos de aplicaciones y accesos directos (`apps.sh`, `quicklinks.sh`).
- **Multimedia y Capturas**: Control de MPD y herramientas de captura de pantalla (`mpd.sh`, `screenshot.sh`).

## Estructura

Los scripts se encuentran en el directorio `scripts/`.

## Requisitos

- [Rofi](https://github.com/davatorium/rofi)
- Bash
- Dependencias específicas de cada script (ej. `amixer`, `maim`, etc.)

## Uso

Asegúrate de tener permisos de ejecución en los scripts:
```bash
chmod +x scripts/*.sh
```

Ejecuta el script deseado desde tu terminal o configura un atajo de teclado en tu entorno de escritorio para lanzarlo.
