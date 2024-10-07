#!/bin/bash
USUARIO=$(grep "$1" /etc/passwd)

if [ -n "$USUARIO" ]
then
    echo "O usuário existe"
    if [ "$1" = dennis ]
    then    
        echo ok
    fi
else
    echo "O usuário não existe"
fi