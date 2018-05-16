#!/bin/bash

echo Introduce fichero o directorio
read x
if test -d $x
then 	echo "*************************************************"
	ls $x
	echo "*************************************************"
else if test -f $x
	then 	echo "*************************************************"
		more $x
		echo "*************************************************"
	else echo No es ni un directorio ni un fichero
	fi
fi 
