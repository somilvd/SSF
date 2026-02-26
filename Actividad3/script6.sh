#!/bin/bash


read -p "Ingrese la base: " base
read -p "Ingrese la altura: " altura

if ! [[ "$base" =~ ^[0-9]+$ ]] || ! [[ "$altura" =~ ^[0-9]+$ ]]; then
    echo "Error: Debe ingresar solo números enteros positivos."
    exit 1
fi

area=$((base * altura))

echo ""
echo "El área del rectángulo es: $area"
echo ""
echo "Dibujando rectángulo:"
echo ""

for ((i=1; i<=altura; i++))
do
    for ((j=1; j<=base; j++))
    do
        echo -n "*"
    done
    echo ""
done
