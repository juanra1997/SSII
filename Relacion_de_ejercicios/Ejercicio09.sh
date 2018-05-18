#!/bin/bash

echo Introduce el nombre del usuario ha comprobar
read user
if test `grep $user /etc/passwd`
then echo El usuario existe, su UID es: `id -u $user` y su GID es: `id -g $user`
else echo El usuario no existe
fi
