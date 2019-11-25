#!/bin/bash
#echo "Enter Mount Point Name:"
#read disk
#for disk in `cat mount_point.txt`;do
#echo "Enter Mount Point Name:";
#read disk;
#echo "Enter Server IP:";
#read ip;
#echo "--- $ip $disk ----"; 
#ssh -i sifyadmin.pem sifyadmin@$ip <<

if [[ $(df -PhT $disk | awk '0+$6 > 85{print $6+0}'|wc -l) -ne 0 ]]; then
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
	df -PhT $disk | awk '0+$6 > 85{print}'
	echo "Thanks"
	echo "Krishnamohan S"
	echo "MITS.UNIX"

else
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
	df -PhT $disk | awk '0+$6 <= 85{print}'
	echo "Thanks"
	echo "Krishnamohan S"
	echo "MITS.UNIX"

fi

