#!/bin/bash

read -p "Ingrese la base: " base
read -p "Ingrese la altura: " altura

if ! [[ "$base" =~ ^[0-9]+$ ]] || ! [[ "$altura" =~ ^[0-9]+$ ]]; then
    echo "Error: Debe ingresar solo números enteros positivos."
    exit 1
fi


area=$(( (base * altura)/2 ))

echo ""
echo "El área del triángulo es: $area"
echo ""
echo "Dibujando triangulo:"
echo ""


for ((i=1; i<=altura; i++))
do
    estrellas=$(( i * base / altura ))

    for ((j=1; j<=estrellas; j++))
    do
        echo -n "*"
    done
    echo ""
done
