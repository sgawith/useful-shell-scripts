#!/bin/sh

# Moves files from a source folder to a target folder, maintaining folder structure.
# Used for (for instance) periodically moving albums from the Downloads folder
# to a music library.
# 
# Usage: ./move-media.sh <source folder> <target folder> <file type>
# 
# e.g. ./move-media.sh ~/Downloads ~/Music/ mp3
#
# 2017/08/18, Sam Gawith
# https://github.com/sgawith/useful-shell-scripts
#
# With thanks to Jonathan Leffler for a great answer on Stack Overflow:
# https://stackoverflow.com/questions/8798153/recursively-move-files-of-certain-type-and-keep-their-directory-structure

if [ -z "$1" ]; then
	echo "No source folder supplied."
	echo "Usage: ./move-media.sh <source folder> <target folder> <file type>"
	echo "e.g. ./move-media.sh ~/Downloads ~/Music/ mp3"
	exit 1
fi

if [ -z "$2" ]; then
	echo "No target folder supplied."
	echo "Usage: ./move-media.sh <source folder> <target folder> <file type>"
	echo "e.g. ./move-media.sh ~/Downloads ~/Music/ mp3"
	exit 1
fi

if [ -z "$3" ]; then
	echo "No file type supplied."
	echo "Usage: ./move-media.sh <source folder> <target folder> <file type>"
	echo "e.g. ./move-media.sh ~/Downloads ~/Music/ mp3"
	exit 1
fi

cd $1
find . -name "*.$3" -print | cpio -pvdumB $2
find . -name "*.$3" -exec rm -f {} +