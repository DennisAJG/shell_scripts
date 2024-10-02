# Outro exercicio com if 
# Validação se o smartphone tá num valor alto, na média ou abaixo.
echo " Sistema de avaliação de smartphone "
echo ""
echo " Informe o modelo do smartphone: "
read MODELO
echo " Informe o valor que você achou num determinado site: "
read VALOR 
if [ "$VALOR" -gt 5000 ] ; then  
    echo "O smartphone: $MODELO esta com o valor acima da média"
elif [ "$VALOR" -ge 4000 ] && [ "$VALOR" -lt 5000 ] ; then
    echo "O smartphone: $MODELO está com o valor na media"
else
    echo "O smartphone: $MODELO está muito abaixo da média em que está custando $VALOR"
fi