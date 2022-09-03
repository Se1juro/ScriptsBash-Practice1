#!/bin/bash

# la variable $0 contiene la ubicación actual del script
# de ahí, sacamos solo el directorio con el comando dirname
DIR=$( dirname $0 )
ANIMALS=${DIR}/../data/animals.b64

echo -e "\nver1: for in $()" # ojo: toma palabra por palabra
for ANIMAL in $( base64 -D ${ANIMALS} ); do
   echo ${ANIMAL}
done
