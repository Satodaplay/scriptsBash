#!/bin/bash

#aquest script ha de recollir dos parametres,
#de sumar 1 ha d'escriure per panatalla "a+b=resultat"

SUMA=$((${1} + ${2}))
echo "La suma entre ${1} i  ${2} es igual a ${SUMA}"