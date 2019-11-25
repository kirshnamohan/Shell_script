#!/bin/bash
#ead -p "Enter Your Name: "  i
#sh -i sifyadmin.pem sifyadmin@$i
echo "Dear Customer,";
 echo "Swap Utilization is critical and above the threshold level. Kindly check and do the needful "
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
top -H -b -n1 |grep "Mem:" -A1
#free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }' 
free | awk 'FNR == 4 {print $3/($3+$4)*100}'
echo "Thanks"
 echo "Krishnamohan S"
echo "MITS.UNIX"
echo ""
echo ""
echo "Dear Customer,";
 echo "We checked and found that Swap Utilization came to normal. Hence we are resolving this ticket "
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
top -H -b -n1 |grep "Mem:" -A1
#ree -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }' 
free | awk 'FNR == 4 {print $3/($3+$4)*100}'
echo "Thanks"
 echo "Krishnamohan S"
echo "MITS.UNIX"
