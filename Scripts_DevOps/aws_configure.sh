#!/bin/bash
clear

# Exibição inicial
echo "------------------- Passo os parametros necessarios --------------------"
echo ""

# Leitura das informações
echo -n "Informe o AWS_ACCESS_KEY_ID: "
read AWS_ACCESS_KEY_ID
echo ""

echo -n "Informe o AWS_SECRET_ACCESS_KEY: "
read AWS_SECRET_ACCESS_KEY
echo ""

echo -n "Informe o AWS_DEFAULT_REGION: "
read AWS_DEFAULT_REGION
echo ""

echo -n "Informe o AWS_DEFAULT_OUTPUT: "
read AWS_DEFAULT_OUTPUT
echo ""

# Configuração do AWS CLI
echo "Execução do comando aws configure: "
aws configure set aws_access_key_id "$AWS_ACCESS_KEY_ID"
aws configure set aws_secret_access_key "$AWS_SECRET_ACCESS_KEY"
aws configure set region "$AWS_DEFAULT_REGION"
aws configure set output "$AWS_DEFAULT_OUTPUT"
echo ""

# Exibir configurações atualizadas
echo "------------------- Script para visualizar o aws-config ----------------"
echo ""
echo "Segue o conteúdo atualizado do aws-config:"
aws configure list
echo ""

echo "AWS CLI configurada com sucesso!"