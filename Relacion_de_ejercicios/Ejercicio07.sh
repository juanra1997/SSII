#!/bin/bash

if test $4 -lt 5
then echo "$1	$2	$3	Suspenso"
else if test $4 -ge 5 -a $4 -lt 7
	then echo "$1	$2	$3	Aprobado"
	else if test $4 -ge 7 -a $4 -lt 9
		then echo "$1	$2	$3	Notable"
		else echo "$1	$2	$3	Sobresaliente"
		fi
	fi
fi
