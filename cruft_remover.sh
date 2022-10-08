#!/bin/bash

#Author Name: Hasanin Zafar
#Description: This script will delete a file of a specific directory that user will provide that were not modifed by user N minutes ago.
#Note: File path and Time in minutes will be provided by the user.

read -p "how many minutes files should be unmodified for to be considered “cruft”: " days
read -p "Provide the full path of the file: " file_path

#If you want to delete a file based on minutes it's unmodified.
readarray -t files < <(find "$file_path" -type f -mmin +"$days")

#If you want to delete a file based on days it's unmodified.
#readarray -t files < <(find "$file_path" -type f -mtime +"$days")

for file in  ${files[@]};
do
        rm -i $file
done
