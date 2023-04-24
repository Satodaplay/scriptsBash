#!/bin/bash

NUM_PARAM=${#}
if [[ ${NUM_PARAM} -ne 2 ]]
then
    echo "ERROR: has d'introduir dos parametres"
    exit 1
fi


PRODUCTE=$((${1} * ${2}))
echo "La multiplicacio entre ${1} i  ${2} es igual a ${PRODUCTE}"
