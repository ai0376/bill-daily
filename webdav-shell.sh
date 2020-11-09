#!/bin/bash

if [ "$1" = "up" ]; then
	curl --user {id}:{passwd} -T $2 https://dav.jianguoyun.com/dav/bill/
elif [ "$1" = "down" ]; then
	curl --user {id}:{passwd} https://dav.jianguoyun.com/dav/bill/$2 > $2
else
	echo "input $ ./webdav-shell.sh up|down cost.xlsx"
fi
