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
read -p "Threads ( Default 10 ) : "  t;

if [[ $t="" ]]; then
	t=10;
fi


ekse(){
	host "$line"|grep " has address "|cut -d" " -f4 |  tee -a resultip.txt
}

n=1
IFS=$'\r\n'
for line in $(cat $file); do
	f=$(expr $n % $t)
	ekse $file $n &
	n=$[$n+1]
  done
