#!/bin/bash 
#########################################
#
# PrimeiroScript.sh - Script de exemplo 
# Autor: Dennis Augusto (dennis.gusmao@outlook.com)
# Data Criação:  07/10/2024
# Descrição: Script de exemplo que lê a hora atual e exibe a lista de alunos.
# Exemplo de uso: ./PrimeiroScript.sh 
# Versão: 1.0.0
# Alterações:
#   1 - Inclusão de comentários 
#########################################

DATAHORA=$(date +%H:%M) # comando para mostrar hora e minuto atual 
ARQALUNOS="alunos2.txt"

echo "Inciando o script..." | logger -p local0.warn -t [$0]

clear
echo "======= Meu primeiro Script ======="
echo ""
echo "Exibir data e hora atual: $DATAHORA"  # Usando variaveis


# Funcao de leitura da lista de alunos
echo "=================================="
echo "Listagem dos Alunos: "
#sort $ARQALUNOS  | tee -a $LOG # Caminho do arquivo de alunos 
sort $ARQALUNOS | tee -a >(logger -p local0.warn -t [$0])

DATAHORA=$(date +%M)
echo "-----------------------------------"
echo "Novo minuto atual: $DATAHORA"

echo "Fim do Script..." | logger -p local0.warn -t [$0]
