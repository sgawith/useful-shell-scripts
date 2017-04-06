# Counts open file handles for a specified process ID.
# Useful for debugging Java 'Too many open files' exceptions.
# 
# Usage: ./fileHandles.sh <pid>
#
# 2015/04/05

lsof -a -p $1 | wc -l
