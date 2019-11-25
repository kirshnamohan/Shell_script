#!/bin/bash 
echo "Dear Customer,";
 echo " We checked and found that CPU Utilization came to normal. Hence we are closing this ticket "
echo "Current Time:";
echo "=============";
date;echo "Server Detail:";
echo "==============";
hostname;
#/sbin/ip r|grep -i src;
echo "IP Details:"
echo "===========";
/sbin/ip r|grep src; 
echo "CPU Utilization:";
echo "==============";
echo "No. of Cores";
echo "============";
nproc
echo "Top utilization Processes:";
echo "--------------------------";
sleep 3;
top -H -b n1|head -5; 
#/usr/bin/mpstat 2 5
 ps -eo pid,ppid,user,%cpu,%mem,rss,cmd --sort -%cpu | grep -v rss | head -n6
echo "Thanks"
echo "Krishnamohan S"

