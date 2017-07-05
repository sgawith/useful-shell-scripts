#!/bin/bash

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