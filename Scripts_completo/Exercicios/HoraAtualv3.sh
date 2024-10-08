HORA=$(date +%H)
MIN=$(date +%M)

echo 
case $HORA in 
    0[6-9] | 1[01]) # de 0 
        echo "Bom dia"
        ;;
    1[2-7])
        echo "Boa tarde"
        ;;
    *)
        echo "Boa noite"
        ;;
esac

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