#!/bin/bash

if [[ ${#} == ${3} ]]
then
    echo "El primer argument es {1}"
    echo "El segon argument es {2}"
else
    echo "No has posat suficients arguments"
    exit 1

fi
exit 0
