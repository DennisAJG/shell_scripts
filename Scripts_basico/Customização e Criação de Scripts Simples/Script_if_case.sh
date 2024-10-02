#!/bin/bash
VAR4=$(cat /etc/passwd| wc -l)

echo "Scripts usando o if e case"
# Teste do if
echo "Informe quantos usuários você acha que tem:"
read VAR3
if test $VAR4 -gt $VAR3 ; then
    echo "O sistema tem mais de $VAR3 usuarios"
else
    echo "O sitema tem menos de $VAR3 usuarios"
fi
# Test do Case
echo ""
case $VAR1 in 
    0)
        echo "O valor digitado foi 0"
    ;;
    1|2|3|4|5)
        echo "O valor digitado foi entre 1 e 5"
        sleep 3
    ;;
    *)
        echo " O valor digitado foi maior que 5"
esac