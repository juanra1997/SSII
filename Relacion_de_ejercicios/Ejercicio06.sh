#!/bin/bash

echo Introduce el nombre del fichero a buscar
read n
echo "*********************************************************"
find /home -iname $n
echo "*********************************************************"
