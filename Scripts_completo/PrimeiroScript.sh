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

# Funcao de leitura da data e hora 
clear
echo "======= Meu primeiro Script ======="
echo ""
echo "Exibir data e hora atual: $DATAHORA"  # Usando variaveis


# Funcao de leitura da lista de alunos
echo "=================================="
echo "Listagem dos Alunos: "
sort $ARQALUNOS  # Caminho do arquivo de alunos 

DATAHORA=$(date +%M)
echo "-----------------------------------"
echo "Novo minuto atual: $DATAHORA"