#!/bin/bash

# el archivo de entrada llega en la variable $1
ZIPFILE=$1

# configuramos la variable del directorio destino
# a partir del nombre del archivo a procesar:
TMPDIR=$( dirname $0 )

# el archivo de entrada debe existir y ser un ZIP
# comprobar si es un ZIP con el comando "file"
if [ ! -f $ZIPFILE ]; then

fi

# Descomprimir el archivo ZIP

SALES=""

# leer cada registro de ventas, fila por fila
cat $SALES |
while read SALE; do
  # Extraer el nombre del país y crear un directorio
  COUNTRY=$( ... )
  # creamos el directorio para cada país 
  mkdir $COUNTRY
  cd $COUNTRY
  # guardamos las ventas de ese país en el
  # archivo sales.csv dentro de cada país
  head -1          > sales.csv
  grep $COUNTRY    >> sales.csv
  cd ..
done

# Comprimimos todos los directorios de los países en un nuevo ZIP
