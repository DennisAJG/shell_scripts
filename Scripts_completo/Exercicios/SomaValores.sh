#!/bin/bash

echo "Soma valores"
read -p "Informe o primeiro numero: " NUM1
read -p "Informe o segundo numero: " NUM2
echo ""
SOMA=$(expr $NUM1 + $NUM2)
echo "A soma entre $NUM1 e $NUM2 é: $SOMA"
echo ""