#!/bin/ksh
#Simple Converting Domain to IP
#Jevil36239
#Finished by 14/SEP/2021 20:27
#please bro jangan
#laike rilly? cuma gini doang bjir bruh
clear
echo "
          _________________(- Simple Domain to IP -)_________________
                      ___________________________________   
                               _________________               
"
echo ""


read -p "Masukan List : " file;

ekse(){
	bwa=$(dig +short $line | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"| head -1)
	if [ -n "$bwa" ]; then
    echo "-$2/$cekbaris- $bwa" 
    echo $bwa >> resultip.txt
else
	echo "-$2/$cekbaris- Failed" 
fi
}

n=1
IFS=$'\r\n'
for line in $(cat $file); do
	cekbaris=$(cat $file | wc -l)
	ekse $file $n &
	n=$[$n+1]
  done
