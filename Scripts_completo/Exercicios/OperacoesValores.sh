#!/bin/bash
echo "==== Operações ====="
read -p "Informe o Valor 1: " NUM1
read -p "Informe o Valor 2: " NUM2
if [ ! $NUM1 ] || [ ! $NUM2 ]
then 
    echo "Nenhum dos valores pode ser nulo"
    exit 1
fi

echo 
echo "Escolha uma Operação:"
echo "1 = Soma"
echo "2 = Subtração"
echo "3 = Divisão"
echo "4 = Multiplicação"
echo "Q = Sair"
echo 
read -p "Opção: " OP

case $OP in
    1)
        OPER="+"
        ;;
    2)
        OPER="-"
        ;;
    3)
        if [ $NUM1 -eq 0 -o $NUM2 -eq 0 ]
        then
            echo "Um valor 0 não pode ser utilizada em uma multiplicação"
            exit 1
        fi
        OPER="*"
        ;;
    4)
        if [ $NUM1 -eq 0 -o $NUM2 -eq 0 ]
        then   
            echo "Um valor 0 não pode ser utulizado em uma divisão"
            exit 1
        fi

        if [ $(expr $NUM1 % $NUM2) -ne 0 ]
        then 
            echo "Divisão com Resto = $(expr $NUM1 % $NUM2)"
        else 
            echo "Divisão Exata"
        fi
        echo
        OPER="/"
        ;;
    [Qq])
        echo "Saindo..."
        exit
        ;;
    *)
        echo "Opção Inválida"
        exit 1
        ;;
esac 
echo "$NUM1 $OPER $NUM2 = $(expr $NUM1 "$OPER" $NUM2)"

