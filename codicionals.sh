#!/bin/bash

read -p "Indrueix un valor per X: " X

if [[ $[X]  -le 5 ]]
then 
    echo "has introducido un numero menor o igual q 5"
else
    echo "El numero introducido es meyor que 5"
fi