# Counts open file handles for a specified process ID.
# Useful for debugging Java 'Too many open files' exceptions.
# 
# Usage: ./fileHandles.sh <pid>
#
# Where <pid> is the process ID of a Java process.
#
# 2017/04/05, Sam Gawith
# https://github.com/sgawith/useful-shell-scripts

if [ -z "$1" ]; then
	echo "No argument supplied."
	echo "Usage: ./fileHandles.sh <pid>"
	echo "Where <pid> is the process ID of a Java process."
	exit 1
fi

lsof -a -p $1 | wc -l
