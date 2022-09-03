#!/bin/bash

# la variable $0 contiene la ubicación actual del script
# de ahí, sacamos solo el directorio con el comando dirname
DIR=$( dirname $0 )
ANIMALS=${DIR}/../data/animals.b64

echo -e "\nver2: cat | while" # lee el archivo linea por linea
base64 -D ${ANIMALS} |
while read ANIMAL; do
   echo ${ANIMAL}
done

