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

LOG="$HOME/Documentos/shell_scripts/Scripts_completo/Scripts_logs/alunos_logs_$DATAHORA.log"
# Funcao de leitura da data e hora 
exec 1>> >(tee -a "$LOG")
#exec 1>> $LOG
exec 2>&1


echo "$(date) - Inciando o script..." >> $LOG

clear
echo "======= Meu primeiro Script ======="
echo ""
echo "Exibir data e hora atual: $DATAHORA"  # Usando variaveis


# Funcao de leitura da lista de alunos
echo "=================================="
echo "Listagem dos Alunos: "
sort $ARQALUNOS  | tee -a $LOG # Caminho do arquivo de alunos 

DATAHORA=$(date +%M)
echo "-----------------------------------"
echo "Novo minuto atual: $DATAHORA"

echo "$(date) - Fim do Script..." >> $LOG
