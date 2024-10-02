#!/bin/zsh
echo  "Sistema para alteração de user e group do scrip exer1.sh" 
echo "Informe oque que voce quer alterar, 1 para user ou 2 para group: "
read NOME
case $NOME in
    1)
        echo "Será alterado o user do arquivo /home/dennis/Documents/Dennis-DevOps/shell_scripts/Customização e Criação de Scripts Simples/exercicios/exer1.sh"
        chown root:dennis exer1.sh
        #chmod 600 exer1.sh
        ls -l exer1.sh  
    ;;
    2)
        echo "Será alterado o group do arquivo /home/dennis/Documents/Dennis-DevOps/shell_scripts/Customização e Criação de Scripts Simples/exercicios/exer1.sh"
        chown dennis:root exer1.sh
        #chmod 622 exer1.sh
        ls -l exer1.sh
    ;;
    *)
        echo "valor errado"
esac
