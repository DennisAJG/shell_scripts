#!/bin/bash 

ler () {
    read -p "Informe o seu Nome: " NOME
    read -p "Informe o seu Sobrenome: " SOBRENOME
    return 10
}

ler 
echo "Retorne Code: $?"
echo
echo $NOME $SOBRENOME