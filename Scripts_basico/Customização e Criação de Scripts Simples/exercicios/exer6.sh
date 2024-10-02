#!/bin/bash
echo  " ------ Sistema para validação de CPU,MEM,MOUNTS ------- "
echo "informe oque você deseja visualizar 1=cpu,2=mem,3=mount : "
read VALOR
case $VALOR in
    1)
        echo "Segue as informações do modelo da CPU: "
        cat /proc/cpuinfo | egrep model 
    ;;
    2)
        echo "Segue as informações da Memória RAM e SWAP: "
        free -g 
    ;;
    3)
        echo "Segue as informações das partições já montadas: "
        cat /proc/mounts
    ;;
    *)
        echo " valor errado "
esac