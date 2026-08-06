# appletsRufi

![Bash](https://img.shields.io/badge/Language-Bash-blue.svg)
![Rofi](https://img.shields.io/badge/Tool-Rofi-brightgreen.svg)

`appletsRufi` es una colección de scripts en Bash optimizados para proporcionar una interfaz de usuario moderna, rápida y altamente personalizable utilizando **Rofi**. Este proyecto busca mejorar la productividad en entornos de escritorio (especialmente gestores de ventanas como i3, bspwm o sway) mediante menús intuitivos para la gestión del sistema y utilidades diarias.

## Características principales

- **Gestión de Energía**: Menús integrados para suspender, reiniciar, apagar o bloquear la sesión de forma segura.
- **Control de Sistema**: Ajustes rápidos en tiempo real para volumen de audio, brillo de pantalla y monitorización del estado de la batería.
- **Utilidades de Lanzamiento**: Acceso ágil a aplicaciones instaladas y enlaces rápidos a sitios web de uso frecuente.
- **Multimedia**: Interfaz dedicada para controlar MPD (Music Player Daemon) sin necesidad de abrir un cliente pesado.
- **Capturas de Pantalla**: Herramienta simplificada para realizar capturas de área o de pantalla completa con un solo clic.

## Estructura del Proyecto

```text
.
├── COMMIT_CONVENTIONS.md   # Estándar para contribuciones
├── GEMINI.md               # Documentación de asistencia técnica
├── scripts/                # Directorio principal con todos los scripts
│   ├── appasroot.sh        # Ejecución de apps con privilegios
│   ├── apps.sh             # Lanzador de aplicaciones
│   ├── battery.sh          # Estado de la batería
│   ├── brightness.sh       # Control de brillo
│   ├── mpd.sh              # Interfaz para MPD
│   ├── powermenu.sh        # Menú de apagado/reinicio
│   ├── quicklinks.sh       # Accesos directos web
│   ├── rofi-power.sh       # Alternativa de gestión de energía
│   ├── screenshot.sh       # Herramienta de capturas
│   └── volume.sh           # Control de volumen
└── README.md
```

## Guía de Inicio Rápido

### Requisitos previos
- [Rofi](https://github.com/davatorium/rofi) instalado en tu sistema.
- Intérprete `bash`.
- Dependencias específicas: Asegúrate de tener instalados los paquetes necesarios para cada función (ej. `amixer` o `pactl` para audio, `xbacklight` o `brightnessctl` para brillo, `maim` o `scrot` para capturas).

### Instalación
1. Clona el repositorio en tu máquina local:
   ```bash
   git clone https://github.com/usuario/appletsRufi.git
   ```
2. Otorga permisos de ejecución a los scripts:
   ```bash
   chmod +x scripts/*.sh
   ```

### Uso
Puedes ejecutar cualquier script directamente desde tu terminal o, preferiblemente, vincularlos a atajos de teclado en la configuración de tu gestor de ventanas:
```bash
# Ejemplo: ejecutar el menú de apagado
./scripts/powermenu.sh
```

## Mantenimiento y Contribución

Este proyecto sigue normas estrictas para mantener la consistencia del código. Antes de realizar cambios, por favor consulta:
- `COMMIT_CONVENTIONS.md`: Para seguir el formato correcto en los mensajes de commit.

Si deseas reportar un error, solicitar una nueva funcionalidad o enviar una mejora, abre un *Issue* o un *Pull Request* en el repositorio.

## Soporte

Para dudas adicionales o soporte específico, revisa los archivos de documentación incluidos en el repositorio o contacta con el mantenedor a través de los canales oficiales de GitHub.