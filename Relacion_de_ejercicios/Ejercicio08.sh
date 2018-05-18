#!/bin/bash

echo Introduce el archivo
read r
echo Introduce una ruta para guardar el archivo
read ruta
while read linea
do
if test `echo $linea | cut -d" " -f4` -lt 5
then echo `echo $linea | cut -d" " -f1,2,3`" "suspenso >> $ruta/notas_letras
else if test `echo $linea | cut -d" " -f4` -ge 5 -a `echo $linea | cut -d" " -f4` -lt 7
	then echo `echo $linea | cut -d" " -f1,2,3`" "Aprobado >> $ruta/notas_letras
	else if test `echo $linea | cut -d" " -f4` -ge 7 -a `echo $linea | cut -d" " -f4` -lt 9
		then echo `echo $linea | cut -d" " -f1,2,3`" "Notable >> $ruta/notas_letras
		else echo `echo $linea | cut -d" " -f1,2,3`" "Sobresaliente >> $ruta/notas_letras
		fi
	fi
fi
done < $r

