#!/bin/bash

echo Introduce la ruta absoluta del fichero con el que trabajar
read directoriop
if test -f $directoriop
then
	echo "*************************************************"
	num=3
	while [ $num -eq 3 ]
	do
		echo Menu
		echo 1. Buscar un fichero
		echo 2. Cambiar los permisos del fichero
		echo 3. Buscar una cadena
		echo 4. Salir
		read op
		case $op in
		1) echo Introduce el nombre del fichero
		read fichero
		echo "*************************************************"
			if test `find /home -iname $fichero`
			then find /home -iname $fichero
			else echo No se ha encontrado el fichero
			fi
		echo "*************************************************";;
		#find /home -iname $fichero;;
		2) #echo Introduce la direccion absoluta del fichero
		#read directorio
		ls -ltr $directoriop
		echo Introduce los nuevos permisos
		read permisos
		chmod $permisos $directoriop
		echo "*************************************************"
		ls -ltr $directoriop
		echo "*************************************************";;
		3) echo Introduce la cadena a buscar
		read cadena
			if test `grep -n $cadena $directoriop`
				then echo "*************************************************"
				grep -n $cadena $directoriop
				echo "*************************************************"
			else echo "*************************************************"
			echo No se ha encontrado la cadena
			echo "*************************************************"
			fi;;
		4) #echo "*************************************************"
		num=4
		echo "Adios";;
		#echo "*************************************************";;
		*) echo No es una opcion
		esac
	#echo *************************************************
	done
else echo No has introducido un fichero
fi
