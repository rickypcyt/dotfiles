#!/bin/bash

# Función para guardar ventanas al salir
function save_windows {
    echo "Guardando ventanas abiertas..."
    ~/.config/hypr/save_windows.sh
}

# Capturar salida de Hyprland y ejecutar la función de guardado
trap save_windows EXIT

# Iniciar Hyprland
exec Hyprland
