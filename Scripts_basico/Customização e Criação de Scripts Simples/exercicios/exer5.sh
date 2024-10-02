#!/bin/zsh
echo " --------- Sistema de comandos docker --------- "
echo " digite entre 1=dcl, 2=dil e 3=dvl "
read VALOR
case $VALOR in
    1)
        echo "O comando é para visualizar os containers"
        docker container ls
    ;;
    2)
        echo "O comando é para visualizar as imagens docker"
        docker image ls
    ;;
    3)
        echo "O comando é para visualizar os volumes docker"
        docker volume ls
    ;;
    *)
        echo " valor errado "
esac