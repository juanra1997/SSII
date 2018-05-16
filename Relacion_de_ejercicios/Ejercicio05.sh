#!/bin/bash

echo Introduce un valor
read a
echo Introduce otro valor
read b
x=`expr $a + $b`
echo $x
