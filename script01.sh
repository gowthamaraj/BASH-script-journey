#!/bin/bash

# create a script that copies the log file /var/log/ to /var/messages.old
# del old files

cp ~/Desktop/var/log_file.log ~/Desktop/var/log/ 
cp -r  ~/Desktop/var/log/ ~/Desktop/var/messages.old/
cat /dev/null > ~/Desktop/var/log/*

echo Done with the task
exit 0
