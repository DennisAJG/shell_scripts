#!/bin/bash

read -p "informe o valor máximo de processos em execução: " PROCESSO

while [ $(ps axu | wc -l) -le $PROCESSO ]
do 
    echo "Tudo ok"
    echo "Processos atuais: $(ps axu | wc -l)"
    sleep 3
    echo 
done

echo "Limite de processos Excedido"
echo "Por favor verifique o sistema"
