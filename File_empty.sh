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
#!/bin/bash

[ -s /root/Server_details_GL.sh ] && echo "File not empty" || echo "File empty"

#if [ -s /root/Server_details_GL.sh]
#then
#     echo "File not empty"
#else
#     echo "File empty"
#fi
#
#To find the empty files from current directory
#find  . -type f -empty
#To find the empty directory from current directory
#find  . -type d -empty

