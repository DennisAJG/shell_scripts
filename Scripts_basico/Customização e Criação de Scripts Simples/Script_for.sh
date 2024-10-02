#!/bin/bash
# Test do for
echo ""
echo  " --------- LOOP do FOR ----------"
echo "digite um valor de 0 a 100: "
read VAR1
echo "digite um paramatro de 1 a 10: "
read VA
for i in `seq $VA`
do 
    j=$(expr $i + $VAR1)
    echo "$i + $VAR1 = $j"
    sleep 1
done 
