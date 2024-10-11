#!/bin/bash

function minuscula () {
    echo $1 | tr A-Z a-z
}

function maiuscula () {
    VAR2=$(echo $1 | tr a-z A-Z) #Varaivel global
}

function loca () {
    local VAR3=$(echo $1 | tr a-z A-Z) # Variavel local - apenas reconhecida na função
}
echo ""
minuscula SHELL

echo "--------------------------"

VAR1=$(minuscula DENNIS)
echo $VAR1

echo "--------------------------"
minuscula $1
echo "--------------------------"

maiuscula shell
echo $VAR2
echo "--------------------------"

loca local # Não vai ser exibida no terminal
echo $VAR3
