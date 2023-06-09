#!/bin/bash
function usage(){
    echo "INSTRUCCIONS: ./create_users.sh USEAR_NAME [USER_NAME ... ]"
    echo "EXECUTA COM A ROOT"
    exit 1
}

echo "Nombre del arxiu: ${0}"
echo "directori: $(dirname ${0}) arxiu: $(basename ${0})"

NUMERO_PARAMETRES=${#}
echo "NUMERO DE PARAMETRES: ${NUMERO_PARAMETRES}"

if [[ ${NUMERO_PARAMETRES} -eq 0 ]]
then
    usage
fi

TOTS_ELS_PARAMETRES=${*}
echo "TOTS ELS PARAMETRES: ${TOTS_ELS_PARAMETRES}"

# shift

 TOTS_ELS_PARAMETRES=${*}
echo "TOTS ELS PARAMETRES: ${TOTS_ELS_PARAMETRES}"

if [[ ${UID} -ne 0 ]]
then
    usage
fi

for USER_NAME in ${@}; do
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}"

    #Creacio usuari
    useradd -m ${USER_NAME}
    #Canviar el password
    echo ${USER_NAME}:${PASSWORD} | chpasswd
    passwd -e ${USER_NAME}
done