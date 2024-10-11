#!/bin/bash

adiciona () {
    soma=$(expr $1 + $2)
    return $soma
}

adiciona 10 20
echo "O resultado da soma foi: $?"
echo "$soma"
echo $1 $2  # o $1 e $2 não tem relação com o da função 
