#!/usr/bin/bash

set -euo pipefail

a=1
b=2

while [ $a != $b ]; do
	read -sp "Introduce tu contraseña: " a
	echo ""
	read -sp "Confirma tu contraseña: " b
	echo ""
	if [ $a == $b ]; then
		echo "Efectivamente, eres tú"
		exit 0

	else 
		echo "Error,las contraseñas no coinciden. Vuelve a intentarlo"

	fi
done


