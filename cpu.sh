#!/bin/bash 
CPU_USAGE=$(/usr/bin/mpstat 1 11 | awk '/%idle/ {for (i=1;i<=NF;i++) {if ($i=="%idle") col=i-1}} /^Average:/ {print $col}' | awk '{print int($1+0.5)}')
if [ "${CPU_USAGE}" -lt 20 ];
then
echo "Dear Customer,";
 echo " CPU Utilization is critical and above the threshold level. Kindly check and do the needful ";
echo "Current Time:";
echo "=============";
date;
 echo "Hostname:";
 echo "---------";
 hostname;
 echo "IP Details:";
 echo "-----------";
 /sbin/ip r|grep src;
 echo "CPU Utilization:";
 echo "-------------";
sleep 5;
top -H -b n1|head -10;
echo "----------------------"
/usr/bin/mpstat 1 5
echo "TOP CPU Utilization:"
echo "----------------------"
ps -eo pid,ppid,user,%cpu,rss,cmd --sort -rss | grep -v rss | head -n10
echo "Thanks"
 echo "Krishnamohan S"
echo "MITS.UNIX"
echo ""
echo ""
echo "COH Note : "
echo "----------"
echo "Hi IM,"
echo "Resource Utilization is critical and above the threshold level on this server."
echo "Customer intervention is required to  close the case. Kindly Approve to hold the TAC"
echo ""
echo ""
echo ""
echo ""
else
echo "Dear Customer,";
 echo " We checked and found that CPU Utilization came to normal. Hence we are closing this ticket "
echo "Current Time:";
echo "=============";
date;echo "Server Detail:";
echo "==============";
hostname;
echo "IP Details:"
echo "===========";
/sbin/ip r|grep src;
echo "CPU Utilization:";
echo "==============";
echo "Top utilization Processes:";
echo "--------------------------";
sleep 5;
top -H -b n1|head -10;
/usr/bin/mpstat 2 5
echo "Thank you" 
fi
