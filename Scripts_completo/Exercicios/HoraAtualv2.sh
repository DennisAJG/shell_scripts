HORA=$(date +%H)
MIN=$(date +%M)

echo
if [ $HORA -ge 06 -a $HORA -lt 12 ]
then 
    echo "Bom dia!"
elif [ $HORA -ge 12 -a $HORA -lt 18 ]
then 
    echo "Boa tarde!"
else 
    echo  "Boa noite!"
fi 

if [ $HORA -ge 12 ]
then
    AMPM=PM
    if [ $HORA -ne 12 ]
    then
        HORA=$(expr $HORA - 12)
    fi
else 
    AMPM=AM
fi
echo
echo "A hora atual é: $HORA:$MIN $AMPM"