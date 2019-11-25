#!/bin/bash

read -p "Enter the command :" input
echo $input

for i in `cat ip_cmd.txt`
do
echo "------------------------------$i---------------------------------"
#ssh -i sifyadmin.pem sifyadmin@$i "$input"
ssh -i sifyadmin.pem root@$i "$input"

done
