#$/bin/bash

DIVISIO=$(echo "scale=2; ${1}/${2}" | bc)
echo "La division entre ${1} i  ${2} es igual a ${DIVISIO}"