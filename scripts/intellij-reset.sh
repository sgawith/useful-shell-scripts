#!/bin/bash

if [ -z "$1" ]; then
	echo "No argument supplied."
	echo "Usage: intellij-reset.sh <filename>"
	echo "Where <filename> is the path of an IntelliJ project folder to be cleared out."
	exit 1
fi

if [[ ! -d "$1/.idea" ]]; then
	echo "The supplied folder does not contain an in IntelliJ .idea project settings folder."
	return 1;
fi

cd $1
rm -Rf .idea
find . -name '*.iml' -type f -delete