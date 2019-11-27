#!/bin/sh
#######################################################################
### Objective : Execute the script on the remote Machine            ###
### Author    : krishnamohan.s@globallogic.com                      ###
### Date      : 27 NOV 2019          								###
### Notes	  :  sshpass is a utility designed for running ssh 		###
###					using the mode referred 						###
###					to as "keyboard-interactive" password 			###
###					authentication, but in non-interactive mode.	###
###																	###
###					ssh uses direct TTY access to make sure that the###
###					password is indeed issued by an interactive 	###
###					keyboard user. Sshpass runs ssh in a  dedicated	###
###					tty, fooling it into thinking it is getting the	###
###					password from an interactive user.	 			###
### Package	 :	sshpass-1.06-2.el7.x86_64							###
#######################################################################

sshpass -p $3 ssh $2@$1 'bash -s' < Server_details_GL.sh