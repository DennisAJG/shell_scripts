#!/bin/bash

for i in /home/dennis/Documentos/shell_scripts/Scripts_completo/*
do 
    if [ -f $i ]
    then
        echo "Varificando o arquivo $i"
        LINHAS=$(cat $i | wc -l)
        echo "O arquivo $i contêm $LINHAS linhas."
        echo "-------------------------------------"
        echo
    fi
done
