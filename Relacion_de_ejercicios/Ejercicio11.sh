#!/bin/bash

if test $1 -eq $2
then echo Son iguales
else if test $1 -gt $2
	then echo $1 es mayor que $2
	else echo $2 es mayor que $1
	fi
fi
