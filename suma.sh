#!/bin/bash
#control d'errades
#si no ens passen dos parametrs donam missatge d'errada i sortim script
NUM_PARAM=${#}
if [[ ${NUM_PARAM} -ne 2 ]]
then
    echo "ERROR: has d'introduir dos parametres"
    exit 1
fi

#aquest script ha de recollir dos parametres,
#de sumar 1 ha d'escriure per panatalla "a+b=resultat"

SUMA=$((${1} + ${2}))
echo "La suma entre ${1} i  ${2} es igual a ${SUMA}"