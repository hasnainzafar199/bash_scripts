#!/bin/bash

#Author Name: Hasnain Zafar
#Description: This script will creating files that were in the file that are passed to the script as 1st command line argument.

while read line;
do
        touch $line
done < "$1"
