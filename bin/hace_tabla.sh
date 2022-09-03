#!/bin/bash

BREWFILE="../data/breweries.csv.lzma"

# Descomprimir el archivo en un archivo temporal
# $$ es el PID del proceso, un numero que no se repite
# entre procesos
TEMP="/tmp/$$.brew"
xzcat ${BREWFILE} > ${TEMP}

CANT=$( wc -l ${TEMP} )

cat ${TEMP} |
cut -d\; -f 5 |
sort |
uniq |
while read ESTADO; do
   CANT=$( grep -c "${ESTADO}" ${TEMP} )
   printf "%-15s %6d\n" ${ESTADO} ${CANT}
done

rm -f ${TEMP}
