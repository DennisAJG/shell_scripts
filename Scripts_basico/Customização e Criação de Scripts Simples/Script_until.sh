#!/bin/zsh
# Teste do until
echo ""
echo " ----- Loop do until ------ "
echo "digite o valor de 1 a 10 : "
read VAR1
echo  "digite o parametro : "
read VA
until [ $VAR1 = 0 ]
do 
    echo "O valor atual do \$VAR1 é: $VAR1"
    VAR1=`expr $VAR1 - 1`
    sleep 1
done