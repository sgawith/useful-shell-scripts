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

## move-media.sh

This script moves all files matching a specified file extension from a source folder to a target folder, maintaining the folder structure. Example use would be moving files from a Dropbox folder to a permanent store. Note that this will overwrite files in the target folders, so use with caution.

	./move-media.sh ~/Downloads/new-music ~/Music/awesome-library mp3


