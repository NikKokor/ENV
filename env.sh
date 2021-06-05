#!/bin/bash
a=$1
n=$2
f=$(file sqr.txt)
if [[ !($f == "sqr.txt: empty") ]]
then
  cat /dev/null > sqr.txt
fi
for ((i=1;i<=n;i++))
do
k=$(($a+$i-1));
k1=$(($k*$k));
echo $k"^2 = "$k1 >> sqr.txt
done
echo "размер файла sqr.txt $(find "sqr.txt" -printf "%s")"
cat sqr.txt
