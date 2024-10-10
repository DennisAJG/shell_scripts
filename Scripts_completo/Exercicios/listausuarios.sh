#!/bin/bash
MIN_UID=$(grep "^UID_MIN" /etc/login.defs|tr -s "\t" | cut -f2) #UID_MIN (o valor inicial) / tr -s \t para retirar as tabulações / cut -f2 pegar do 2 campo
MAX_UID=$(grep "^UID_MAX" /etc/login.defs|tr -s "\t" | cut -f2)

OLDIFS=$IFS
IFS=$'\n'

#Criando o cabeçalho da saida
echo  -e "USUARIO\t\t\UID\t\tDIR HOME\t\t\NOEM OU DESCRIÇÃO"

for i in $(cat /etc/passwd)
do
    USERID=$(echo $i | cut -d":" -f3)
    if [ $USERID -ge $MIN_UID -a $USERID -le $MAX_UID ]
    then 
        USER=$(echo  $i | cut -d":" -f1)
        USERDESC=$(echo $i | cut -d":" -f5| tr -d ",")
        USERHOME=$(echo $i | cut -d":" -f6)
        echo -e "$USER\t\t$USERID\t\t$USERHOME\t\t$USERDESC"
    fi
done
IFS=$OLDIFS