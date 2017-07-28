# Usage instructions

## file-handles.sh

This requires a process ID as input. To find the ID for a process, use the ps command:

	ps -aef | grep java

This will give you some information about all the running Java processes. Choose the pid from one of them and run the file handles script as follows:

	./file-handles.sh 3463

## server-status.sh

This requires a text file as input, containing a list of URLs to check, one per line. An example list is included (sample-urls.txt).

	./server-status.sh ./sample-urls.txt
	
## list-features.sh

This prints the first line of each .feature file below the current directory. The intended use is summarising a list of all feature tags from Cucumber feature files.

	./list-features.sh

