#!/bin/bash

for i in `ls /etc`
do
if test -f /etc/$i
then if test -r /etc/$i
	then echo $i >> /home/listaetc
	fi
fi
done
