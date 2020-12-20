#!/bin/bash

message=$(cat ~/.xsession-errors | grep 'Disabling module "ewmh"')
echo $message
message=$(cat ~/.xsession-errors | grep WARNING)
echo $message
message=""


if  pgrep -x "polybar" > /dev/null   &&  -z $message ; then
	arcolinux-restart-polybar	
fi

