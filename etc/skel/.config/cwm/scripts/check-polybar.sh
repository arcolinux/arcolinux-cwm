#!/bin/bash

message=$(cat ~/.xsession-errors | grep 'Disabling module "ewmh"')
#echo $message
process=$(pgrep -x polybar)
#echo $process
if [ -z "$process" ] && [ -z "$message" ] ; then
	echo "No polybar and no error"
else
	arcolinux-restart-polybar	
fi

