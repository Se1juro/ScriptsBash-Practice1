#!/bin/bash

# la variable $0 contiene la ubicación actual del script
# de ahí, sacamos solo el directorio con el comando dirname
DIR=$( dirname $0 )

# con este directorio $DIR, definimos la ubicación
# del archivo de datos (fruits.txt) y el directorio destino
FRUITS="${DIR}/../data/fruits.txt"
FRUITSDIR="${DIR}/../public/fruits"

# Crear los directorios destino, si no existen
mkdir -p "${FRUITSDIR}"/{A..Z}

# leemos fruta por fruta (linea) del archivo de datos
cat ${FRUITS} |
while read FRUIT; do
   # Sacar la primera letra
   LETRA=${FRUIT:0:1}
   # Utilizar la letra para enviar cada "fruta" al archivo correcto
   echo "${FRUIT}" >> "${FRUITSDIR}/${LETRA}/fruits_${LETRA}.txt"
done

