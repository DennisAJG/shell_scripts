#!/bin/bash
clear
read -p "Informe o inicio da sequência: " INICIO
read -p "Informa o fim da sequência: " FIM
read -p "Informe o intervalo da sequência: " INTERVALO
echo "------------------------------------------"
for i in $(seq $INICIO $INTERVALO $FIM)
do 
    echo "Segue a sequencia: $i"
    sleep 1
    echo "---------------------"
done