#!/bin/bash

#Genera un nombre aleatori entre 1 i 10:
adivina=$(( ( RANDOM % 10 )  + 1 ))

########################################################
# Escriu el teu codi aqui
########################################################

echo "Has de adivinar un nombre del 1 al 10"
VIDES=3
while [ $VIDES -gt 0 ]
do
    read numero
    if [ $numero -eq $adivina ]
    then
        echo "Correcto has ganado"
        exit 0
    elif [ $numero -lt $adivina ]
    then
        echo "Fred"
    elif [ $numero -gt $adivina ]
    then
        echo "Calent"
    fi
    let VIDES=$VIDES-1
done

echo "Has perdut!!"

########################################################
# Fi del teu codi
########################################################

echo "El nombre que havies d'adivinar era: ${adivina}"