#!/bin/bash

function usage(){
    echo "USAGE: you have to enter almost 2 parametres"
    echo "params_classe.sh x1 x2 [x3...xn]"
}


NUM_PARAM=${#}
echo "numero de parametres: ${NUM_PARAM}"
if [[ ${NUM_PARAM} -lt 2 ]]
then
    usage
fi

SUMA=0
MULTIPLICACIO=1
for I in ${@}
do
    SUMA=$((SUMA+I))
    MULTIPLICACIO=$((MULTIPLICACIO*I))
done
echo "LA SUMA VAL ${SUMA}"
echo "LA MULTIPLICACIO VAL ${MULTIPLICACIO}"