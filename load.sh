#!/bin/bash
#ead -p "Enter Your Name: "  i
#sh -i sifyadmin.pem sifyadmin@$i
echo "Dear Customer,";
 echo " We checked and found that Load Average came to normal. Hence we are closing this ticket "
echo "Current Time:";
echo "=============";
date;
 echo "Hostname:";
 echo "---------";
 hostname;
 echo "IP Details:";
 echo "-----------";
 /sbin/ip r|grep src;
 echo "Load Status:";
 echo "-------------";
 uptime;
echo "Thanks"
 echo "Krishnamohan S"


