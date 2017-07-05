#!/bin/bash

# Checks a list of URLs and reports any which do not return
# a 200 OK http status
# 
# Usage: ./server-status.sh <filename>
# 
# Where <filename> is the name and path of a file containing a list of URLs to be checked.
#
# 2017/07/05, Sam Gawith
# https://github.com/sgawith/useful-shell-scripts
allOK=true
urlCount=0

while IFS='' read -r line || [[ -n "$line" ]]; do
    urlCount=$(expr $urlCount + 1)
    status=$(curl -L -s -o /dev/null -w "%{http_code}" $line)
    if [ "$status" -ne 200 ]; then
    	allOK=false
    	printf "URL unavailable: %s (http status %s)\n" $line $status
    fi
done < "$1"

if [ "$allOK" = true ]; then
	printf "%s URLs checked. All returned 200 OK.\n" $urlCount
fi