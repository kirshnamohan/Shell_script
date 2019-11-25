#!/bin/bash
#ead -p "Enter Your Name: "  i
#sh -i sifyadmin.pem sifyadmin@$i
#USE=`df -PhT | awk '0+$6 > 85{print}'`
echo "Dear Customer,";
 echo "Disk Utilization is critical and above the threshold level. Kindly check and do the needful "
echo "Current Time:";
echo "=============";
date;
 echo "Hostname:";
 echo "---------";
 hostname;
 echo "IP Details:";
 echo "-----------";
 /sbin/ip r|grep src;
 echo "Disk Status:";
 echo "-------------";
 #for fs in `cat /proc/mounts | egrep "ext4|xfs" | awk ' { print $2 }' | tr '\n' ' '` ;  do SPC=$( df $fs | awk 'END{ print $(NF-1) }' | sed 's/[^0-9]*//g' ) ; if [ $SPC -gt 80 ]; then  echo "$fs file system used more than 80% of threshold level";  fi done;
df -PhT | awk '0+$6 > 85{print}'
echo "Thanks"
 echo "Krishnamohan S"
echo "MITS.UNIX"
echo ""
echo ""
echo "Dear Customer,";
 echo "We checked and found that Disk Utilization came to normal. Hence we are resolving this ticket "
echo "Current Time:";
echo "=============";
date;
 echo "Hostname:";
 echo "---------";
 hostname;
 echo "IP Details:";
 echo "-----------";
 /sbin/ip r|grep src;
 echo "Disk Status:";
 echo "-------------";
 #for fs in `cat /proc/mounts | egrep "ext4|xfs" | awk ' { print $2 }' | tr '\n' ' '` ;  do SPC=$( df $fs | awk 'END{ print $(NF-1) }' | sed 's/[^0-9]*//g' ) ; if [ $SPC -gt 80 ]; then  echo "$fs file system used more than 80% of threshold level";  fi done;
df -PhT | awk '0+$6 <= 85{print}'
echo "Thanks"
 echo "Krishnamohan S"
echo "MITS.UNIX"
