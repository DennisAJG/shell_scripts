#!/bin/bash

read -p "Qual é o(a) melhor aluno(a): " MELHOR

for i in $(cat alunos2.txt)
do 
    if [ $i = $MELHOR ]
    then
        echo "$i é o(a) melhor aluno(a)"
        break
    fi
    echo "Aluno(a): $i"
done