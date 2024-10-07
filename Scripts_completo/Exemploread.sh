#!/bin/bash 
clear
echo "======== Localização de alunos no arquivo ========="
read -p "Informe o nome do Aluno: " ALUNO 
echo "" 
 
echo "O Aluno: $(grep "$ALUNO" alunos2.txt) existe na base de dados do arquivo"
echo "==================================================="