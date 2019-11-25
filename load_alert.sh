#!/bin/bash
read -p "Enter Your Name: "  i
ssh -i sifyadmin.pem sifyadmin@$i
 echo "Hostname:";
 echo "---------";
 hostname;
 echo "IP Details:";
 echo "-----------";
 ip r|grep src;
 echo "Load Status:";
 echo "-------------";
 uptime;
