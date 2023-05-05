#!/bin/bash
#script que recor el fitxer numero.txt i mostra cada fila del fitxer per pantalla

NUM_LINIA=0
SUMA=0
for linia in $(cat numero.txt)
do
    NUM_LINIA=$((NUM_LINIA+1))
    SUMA=$((SUMA+linia))
done
echo "Numero de linia: ${NUM_LINIA}"
echo "La suma val: ${SUMA}"
echo "scale=2; ${SUMA}/${NUM_LINIA}" | bc