#!/bin/sh
#######################################################################
### Objective : Writing a script to display system information		###
###				1. Hostname Information 							###
###				2. FileSystem Usage 								###
###				3. Free Space and Memory 							###
###				4. System Uptime and Load 							###
###				5. Currently logged in User 						###
###				6. Top 5 Memory consuming Process 					###
###				7. Top 5 CPU Consuming Process 						###
###				8. Top 2 disk Usage 								###
###				9. Looking for files with 777 Permission            ###
### Author    : krishnamohan.s@globallogic.com                      ###
### Date      : 25 NOV 2019                                         ###
#######################################################################
###
### Defining Global Varaibles ###
HOSTNAME=`which hostname`
DF=`which df`
FREE=`which free`
UPTIME=`which uptime`
USER=`which w`
C_DISP=`which cat`
E_DISP=`which echo`
HOST=`which hostname`
PROC=`which ps`
SORT=`which sort`
HEAD=`which head`
GREP=`which grep`
AWK=`which awk`
FIND=`which find`
TOP=`which top`


###Displaying Server Details ###
echo "            ################          "
echo "            #Server Details#          "
echo "            ################          "
echo "Hostname of an Server"
echo "====================="
#/bin/hostname
$HOSTNAME
echo

echo "File system Usage"
echo "================="
$DF -hT --total
echo

echo "Memory free space and Usage"
echo "==========================="
$FREE -h
echo

echo "System Uptime and Load"
echo "======================"
$UPTIME
echo

echo "Currently logged in User"
echo "========================"
$USER
echo

echo "Top 5 Memory consuming Process"
echo "=============================="
$PROC -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | $HEAD -n6
echo
echo "Memory Used"
echo "==========="
#$FREE | $AWK 'FNR == 5 {print $5/($5+$4)*100}'
$FREE | $AWK 'FNR == 2{print $3/($3+$4)*100}'&& $FREE -h |$AWK 'FNR == 2 {print $3}'
echo
echo "Memory Unused"
echo "============="
$FREE | $AWK 'FNR == 2{print $4/($3+$4)*100}' && $FREE -h |$AWK 'FNR == 2 {print $4}'
echo "Memory Available(Free + Shared + Buff/Cache)"
echo "============================================"
$FREE -h |$AWK 'FNR == 2 {print $7}'
echo 

echo "Top 5 CPU consuming Process"
echo "==========================="
#$TOP -H -b n1|head -11 |tail -6
$PROC -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | $HEAD -n6
echo

echo "Top 2 disk Usage"
echo "================"
$DF -PhT | $AWK '0+$6 > 90{print}'|$HEAD -n2
echo

echo "Looking for files with 777 Permission"
echo "====================================="
$FIND -type f -perm 0777
#$FIND / -type f -perm 0777
echo
