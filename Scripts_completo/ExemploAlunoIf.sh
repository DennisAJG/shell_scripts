#!/bin/bash 
ARQALUNOS="alunos2.txt"
clear
echo "===== Scriptde busca de alunos ===== "
echo 
if [ $# -gt 0 ]
then
    ALUNONOME=$(grep "$1" "$ARQALUNOS")
    echo "O nome do aluno é: "$ALUNONOME""
else
    echo "Informe o nome do aluno como parâmetro!"
fi

echo 
echo "Fim do Script"