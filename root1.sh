#!/bin/bash
function usage(){
echo "Usage ${0}"
    echo
    echo "has de ser root"
    exit 1
}
#comprovam si som l'usuari root

if [[ ${UID} -ne 0 ]]
then
    usage
fi

read -p "Introdueix el nom d'usuari: " USER_NAME

echo "Creant l'usuari ${USER_NAME}"