#$/bin/bash

NUM_PARAM=${#}
if [[ ${NUM_PARAM} -ne 2 ]]
then
    echo "ERROR: has d'introduir dos parametres"
    exit 1
fi

DIVISIO=$(echo "scale=2; ${1}/${2}" | bc)
echo "La division entre ${1} i  ${2} es igual a ${DIVISIO}"
