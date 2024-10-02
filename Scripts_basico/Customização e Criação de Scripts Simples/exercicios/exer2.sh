#!/bin/zsh
DIMG=$(docker image ls)
DVML=$(docker volume ls)
CPUINFO=$(cat /proc/cpuinfo | egrep "model name")
MEMINFO=$(free -g)
echo "Esse script faz o processo de verificação de imagens e volumes no docker"
echo ""
echo "Segue o conteudo para visualizar as imagens docker"
echo "$DIMG"
echo ""
echo "Segue o conteudo para visualizar os volumes docker"
echo "$DVML"
echo ""
echo "Segue informações do modelo da CPU da sua máquina:"
echo "$CPUINFO"
echo ""
echo "Seuge informações da RAM da sua máquina:"
echo "$MEMINFO"
echo ""
