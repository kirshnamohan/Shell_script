#!/bin/sh
#######################################################################
### Objective : Finding file is empty or not empty		            ###
### Author    : krishnamohan.s@globallogic.com                      ###
### Date      : 26 NOV 2019          								###
### Notes	  : The right side of && will only be evaluated if the  ###
###             exit status of the left side is zero (i.e. true).   ###
###             || is the opposite: it will evaluate the right      ###
###             side only if the left side exit status              ###
###             is non-zero (i.e. false).    						###
###             													###
###             -s is nonemptyfile		                            ###
#######################################################################
read -p "Enter the File name:" File_name
#[ -s $File_name ] && echo "File not empty" || echo "File empty"
#if [ -s /root/mohan ]
if [ -s $File_name ]
then
     echo "File not empty"
else
     echo "File empty"
fi
#find  . -type f -empty

#find  . -type d -empty


