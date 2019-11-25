#!/bin/bash
clear
for i in `cat ip_cmd.txt`
do
echo "------------------------------$i---------------------------------"

read -p 'Password: ' -s password
ssh -i sifyadmin.pem sifyadmin@$i 

 echo "$password" | sudo -S whoami
uptime
done
