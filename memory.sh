#!/bin/bash
#ead -p "Enter Your Name: "  i
#sh -i sifyadmin.pem sifyadmin@$i
#USE=`free | awk 'FNR == 3 {print "Memory Usage:\n", $3/($3+$4)*100}'`
USE=`free | awk 'FNR == 3 {printf "%.0f\n", $3/($3+$4)*100}'`
A=80;
#echo $USE;
if [ $USE -gt $A ]; then
echo "Dear Customer,";
 echo " Memory Utilization is critical and above the threshold level. Kindly check and do the needful ";
echo "Current Time:";
echo "=============";
date;
 echo "Hostname:";
 echo "---------";
 hostname;
 echo "IP Details:";
 echo "-----------";
 /sbin/ip r|grep src;
 echo "Memory Status:";
 echo "-------------";
#top -H -b -n1 |grep "Mem:" -A1
free -m
#free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }' 
echo "Memory Balloon"
echo "--------------"
vmware-toolbox-cmd stat balloon
echo "Used Memory "
echo "------------"
free | awk 'FNR == 3 {print $3/($3+$4)*100}'
echo "TOP Memory Utilization"
echo "----------------------"
ps -eo pid,ppid,user,%cpu,%mem,rss,cmd --sort -rss | grep -v rss | head -n10
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
 echo "We checked and found that Memory Utilization came to normal. Hence we are resolving this ticket "
echo "Current Time:";
echo "=============";
date;
 echo "Hostname:";
 echo "---------";
 hostname;
 echo "IP Details:";
 echo "-----------";
 /sbin/ip r|grep src;
 echo "Memory Status:";
 echo "-------------";
#top -H -b -n1 |grep "Mem:" -A1
#ree -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }' 
free -m
echo "Memory Balloon"
echo "--------------"
vmware-toolbox-cmd stat balloon
echo "Unused Memory "
echo "------------"
free | awk 'FNR == 3 {print $4/($3+$4)*100}'
echo "TOP Memory Utilization" 
echo "----------------------" 
ps -eo pid,ppid,user,%cpu,%mem,rss,cmd --sort -rss | grep -v rss | head -n10
echo "Thanks"
 echo "Krishnamohan S"
echo "MITS.UNIX"
fi
