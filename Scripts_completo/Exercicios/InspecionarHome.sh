#!/bin/bash


for user in /home/*
do 
    DEBCOUNT=0
    TXTCOUNT=0
    TMPCOUNT=0
    OLDIFS=$IFS
    IFS=$'\n'
    for files in $(find $user -name '*.deb' -o -name '*.txt' -o -name '*.tmp')
    do
        case $files in
            *.dev)
                DEBCOUNT=$(expr $DEBCOUNT + 1 )
                ;;
            *.txt)
                TXTCOUNT=$(expr $TXTCOUNT + 1 )
                ;;
            *.tmp)
                TMPCOUNT=$(expr $TMPCOUNT + 1 )
                ;;
        esac 
    done # Fim do for do find

echo "Usuário: $(basename $user)"
echo "Arquivos DEB: $DEBCOUNT"
echo "Arquivos TXT: $TXTCOUNT"
echo "Arquvios TMP: $TMPCOUNT"
echo 
done

IF=$OLDIFS
