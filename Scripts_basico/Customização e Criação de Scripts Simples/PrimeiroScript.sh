#!/bin/zsh
clear
VAR2="Curso LPI1"
VAR3=99
VAR4=`cat /etc/passwd | wc -l`
VAR5=$(date +%H)
echo "__________ Meu primeiro Script _______________"
echo ""
echo "O meu script se chama $0" #$0 retorna o nome do script
echo "Esse script recebeu $# parametros que sao, $1 $2"
echo " "
echo -n "Por favor digite um numero de 0 a 10:" # -n usado para não quebrar uma linha
read VAR1 #usado para que user digite algo na tela para armazenar na variavel. 
echo "O valor digitado foi $VAR1"
echo ""
echo "O arquivo /etc/pawssd possui $VAR4 linhs. A hora atual é $VAR5"
echo ""
echo "Fim do Script"
