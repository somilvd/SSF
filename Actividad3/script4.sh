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
		echo "OK"
		exit 0

	else 
		echo "ERROR"

	fi
done


