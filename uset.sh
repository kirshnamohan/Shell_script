#!/bin/bash
clear
for i in `cat ip_cmd.txt`
do
echo "------------------------------$i---------------------------------"

ssh -i sifyadmin.pem sifyadmin@$i 'bash -s' < user.sh

done
