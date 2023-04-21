#!/bin/bash

#veurem com funcionen els parametres
PARAMETRES=${0}
#${0} ens indica el nom de l'executable
echo "E l parametre 0 es ${0}"

#${1} es el segon parametre posicional
echo "El parametre 1 es ${1}"

#Podeu escriure fin a 9(verificar)
echo "El parametre 2 es ${2}"

parametre_sostingut=${#}
echo "El parametre ${parametre_sostingut} indica..."

