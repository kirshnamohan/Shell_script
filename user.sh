#!/bin/bash
echo "Details of server" ;hostname
echo "Today:"
date;
echo "Server Detail:";
echo "==============";
hostname;
#/sbin/ip r|grep -i src;
#echo "Internal IP Details:"
#echo "====================";
#hostname -I
echo "IP Details:"
echo "===========";
#curl -s ipecho.net/plain;echo
/sbin/ip r|grep src;
echo "===User List===";
#cat /etc/passwd | grep -v "nologin" | awk -F':' '{if ($3 > 999 || $3 == 0 ) print $1}'; 
grep -v "nagios" /etc/passwd|grep "bash"|awk -F: '{print $1}'
echo
echo
echo
sudo cat /etc/sudoers | grep "ALL = (ALL)"
echo "==============================================================================="
