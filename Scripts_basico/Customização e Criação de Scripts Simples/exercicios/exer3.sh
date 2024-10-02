#Teste se o usuário é de menor,maior ou ta velho
echo " -------- Sistema de validação se o cara é > < ou tá velho --------- "
echo " Informe o seu nome completo: "
read NOME
echo " Informe a sua idade: "
read IDADE

if [ "$IDADE" -lt 18 ]; then
    echo "O user $NOME é de menor"
elif [ "$IDADE" -ge 18 ] && [ "$IDADE" -lt 60 ] ; then
    echo "O user $NOME é de maior"
else
    echo "O user $NOME já tá veio"
fi

