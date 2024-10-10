#!/bin/bash

read -p "Informe o nome do arquivo a ser criado: " FILE
read -p "Informa o conjunto de caracteres: " WORD
read -p "Informe o tamanho final do arquivo (em bytes): " SIZE

cat /dev/null > $FILE #valida se o arquivo existir, caso sim, ele apaga tudo oque tem no arquivo e deixa o mesmo em branco sem deletar. 

PORC_EXIBIDA=0

until [ $SIZE -le $(stat --printf=%s "$FILE") ] # -le menor ou igual
do 
    echo -n $WORD >> $FILE 
    SIZEATUAL=$(stat --printf=%s "$FILE")

    PORC_ATUAL=$(expr $SIZEATUAL \* 100 / $SIZE)

    if [ $(expr $PORC_ATUAL % 10) -eq 0 -a $PORC_EXIBIDA -ne $PORC_ATUAL ]
    then
        echo "Concluido: $PORC_ATUAL% - Tamanho do Arquivo: $SIZEATUAL "
        PORC_EXIBIDA=$
    fi
done
