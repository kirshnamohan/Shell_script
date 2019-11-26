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
### Date      : 26 NOV 2019          								###
### CRONTAB	  : 0 1 * * * /Filepath/Server_details_GL.sh#AllDay 1AM ###
#######################################################################
###
### Defining Global Varaibles ###
HOSTNAME=`which hostname`
DF=`which df`
FREE=`which free`
UPTIME=`which uptime`
USER=`which w`
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
$E_DISP "            ################          "
$E_DISP "            #Server Details#          "
$E_DISP "            ################          "
$E_DISP "Hostname of an Server"
$E_DISP "====================="
#/bin/hostname
$HOSTNAME
$E_DISP

$E_DISP "File system Usage"
$E_DISP "================="
$DF -hT --total
$E_DISP

$E_DISP "Memory free space and Usage"
$E_DISP "==========================="
$FREE -h
$E_DISP

$E_DISP "System Uptime and Load"
$E_DISP "======================"
$UPTIME
$E_DISP

$E_DISP "Currently logged in User"
$E_DISP "========================"
$USER
$E_DISP

$E_DISP "Top 5 Memory consuming Process"
$E_DISP "=============================="
$PROC -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | $HEAD -n6
$E_DISP
#$E_DISP "Memory Used in Percentage"
#$E_DISP "========================="
#$FREE | $AWK 'FNR == 5 {print $5/($5+$4)*100}'
#$FREE | $AWK 'FNR == 2{print $3/($3+$4)*100}'
$E_DISP
$E_DISP "Memory Used in GB"
$E_DISP "================="
$FREE -h | $AWK 'FNR == 2 {print $3}'
$E_DISP
#$E_DISP "Memory Unused in Percentage"
#$E_DISP "==========================="
#$FREE | $AWK 'FNR == 2{print $4/($3+$4)*100}' 
$E_DISP "Memory Unused in GB"
$E_DISP "==================="
$FREE -h |$AWK 'FNR == 2 {print $4}'
$E_DISP
$E_DISP "Memory In Buffer"
$E_DISP "================"
$FREE -h |$AWK 'FNR == 2 {print $6}'
$E_DISP
$E_DISP "Memory Available(Free + Shared + Buff/Cache)"
$E_DISP "============================================"
$FREE -h |$AWK 'FNR == 2 {print $7}'
$E_DISP 

$E_DISP "Top 5 CPU consuming Process"
$E_DISP "==========================="
#$TOP -H -b n1|head -11 |tail -6
$PROC -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | $HEAD -n6
$E_DISP

$E_DISP "Top 2 disk Usage"
$E_DISP "================"
$DF -PhT | $AWK '0+$6 > 90{print}'|$HEAD -n2
$E_DISP

$E_DISP "Looking for files with 777 Permission"
$E_DISP "====================================="
$FIND -type f -perm 0777
#$FIND / -type f -perm 0777
$E_DISP
