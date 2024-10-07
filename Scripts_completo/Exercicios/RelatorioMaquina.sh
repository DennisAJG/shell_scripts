#!/bin/bash
KERNEL=$(uname -r)
HOSTNAME=$(hostname)
CPUNO=$(cat /proc/cpuinfo | grep "model name"| wc -l)
CPUMODEL=$(cat /proc/cpuinfo | grep "model name"|head -n1|cut -c14-)
MEMTOTAL=$(expr $(cat /proc/meminfo | grep MemTotal|tr -d ' '|cut -d: -f2|tr -d kB) / 1024 / 1024) # Em GB
FILESYS=$(df -h|egrep -v '(tmpfs|udev|efivarfs)')
UPTIME=$(uptime -s)

clear
echo "Relatorio máquina."
echo "======================================"
echo "Relatorio da Máquina: $HOSTNAME"
echo "Data/Hora: $(date)"
echo "======================================"
echo "Máquina ativa desde: $UPTIME"
echo 
echo "CPUs: "
echo "Quantidade de CPUs/Core: $CPUNO"
echo "Modelo da CPU: $CPUMODEL"
echo 
echo "Memória Total: $MEMTOTAL GB"
echo 
echo "Partições:"
echo "$FILESYS"
echo 
echo "======================================="