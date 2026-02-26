#!/usr/bin/bash

set -euo pipefail

altura=$1
peso=$2

total=$(( ($2 * 10000) / ($1 * $1) ))

echo "Después de los calculos, tu IMC es: $total"

if [ $total -lt 18 ]; then
	echo "Bajo peso, come un poquito más"
elif [[ $total -ge 18 && $total -lt 25 ]]; then
	echo "Peso normal/saludable"
elif [[ $total -ge 25 && $total -lt 30 ]]; then
	echo "Sobrepeso, haz ejercicio"
elif [ $total -ge 30 ]; then
	echo "Obesidad, deja la comida basura"
fi
