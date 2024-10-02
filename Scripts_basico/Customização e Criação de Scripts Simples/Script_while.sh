#Test com while
echo ""
echo " ----- Loop do while ------ "
echo "digite o valor de 1 a 10 : "
read VAR1
echo  "digite o parametro : "
read VA
while [ $VAR1 -le $VA ]
do 
    echo "O valor atual do \$VAR1 é: $VAR1"
    VAR1=`expr $VAR1 + 1`
    sleep 1
done