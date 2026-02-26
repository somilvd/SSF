#!/usr/bin/bash

echo "1. Espacio libre en disco (%)"
echo "2. Espacio libre (tamaño)"
echo "3. Usuario actual y nombre de la máquina"
echo "4. Número de usuarios en la máquina (/etc/passwd)"
echo "5. Espacio usado en tu carpeta"
read -p "Elija una opción: " opcion

case $opcion in
    1)
        echo "Espacio libre en disco (%):"
        df -h --output=pcent /
        ;;
    2)
        echo "Espacio libre en disco (tamaño):"
        df -h --output=avail /
        ;;
    3)
        echo "Usuario actual y nombre de la máquina:"
        echo "Usuario: $(whoami)"
        echo "Máquina: $(hostname)"
        ;;
    4)
        echo "Número de usuarios en la máquina:"
        wc -l /etc/passwd
        ;;
    5)
        echo "Espacio usado en tu carpeta:"
        du -sh $HOME
        ;;
    *)
        echo "Opción no válida."
        ;;
esac
