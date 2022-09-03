#!/bin/bash

# la variable $0 contiene la ubicación actual del script
# de ahí, sacamos solo el directorio con el comando dirname
DIR=$( dirname $0 )
ANIMALS=${DIR}/../data/animals.b64

echo -e "\nver3: while <( file )" # lee el archivo linea por linea
while read ANIMAL; do
   echo ${ANIMAL}
done <( base64 -D ${ANIMALS} )

