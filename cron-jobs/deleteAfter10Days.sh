#!/bin/bash

timestamp=$(date +%Y%m%d_%H%M%S)
desktopPath="/Users/harshit/Desktop"
downloadsPath="/Users/harshit/Downloads"
logPath="/Users/harshit/Documents/log"

# log the deletion
filename=log_back_$timestamp.txt
log=$logPath/$filename

# delete files and folders from desktop
find $desktopPath -mtime +10 -type f >> $log
find $desktopPath -mtime +10 -type f -delete
find $desktopPath -mtime +10 -type d >> $log
find $desktopPath -mtime +10 -type d -delete

# delete files and folders from downloads
find $downloadsPath -mtime +10 -type f >> $log
find $downloadsPath -mtime +10 -type f -delete
find $downloadsPath -mtime +10 -type f >> $log
find $downloadsPath -mtime +10 -type f -delete