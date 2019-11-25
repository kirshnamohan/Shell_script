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
HOSTNAME=`$WHICH hostname`
DF=`$WHICH df`
FREE=`$WHICH free`
UPTIME=`$WHICH uptime`
USER=`$WHICH w`
CAT=`$WHICH CAT`
ECHO=`$WHICH echo`

###Displaying Server Details ###
$ECHO "Hostname of an Server"
$ECHO "====================="
$HOSTNAME
$ECHO