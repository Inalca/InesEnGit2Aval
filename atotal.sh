#!/bin/bash

echo "Introduce el nombre de una ciudad: "
read $ciudad

if [[ -n $(grep -i "$ciudad" ciudades.txt) ]]; then
 $total=$(cat consumo.txt | grep -i "$ciudad" | awk '{total += $2} END {print total}')
 echo "El total de consumo para $ciudad es $total"
else
 echo "La ciudad introducida no existe, inténtalo de nuevo"
fi

exit