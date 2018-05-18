#!/bin/bash

echo Introduce el primer fichero
read fich1
if test -f $fich1
then echo Introduce el segundo fichero
	read fich2
	if test -f $fich2
	then if test `wc -l $fich1 | cut -c1` -eq `wc -l $fich2 | cut -c1`
		then echo "********************************************************"
			echo Tienen las mismas lineas
			echo "********************************************************"
		else if test `wc -l $fich1 | cut -c1` -lt `wc -l $fich2 | cut -c1`
			then echo "********************************************************"
				echo $fich2 tiene mas lineas que $fich1
				echo "********************************************************"
			else echo "********************************************************"
				echo $fich1 tiene mas lineas que $fich2
				echo "********************************************************"
			fi
		fi
	else echo "********************************************************"
		echo No es un fichero
		echo "********************************************************"
	fi
else echo "********************************************************"
	echo No es un fichero
	echo "********************************************************"
fi
