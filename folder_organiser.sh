#!/bin/bash

#Aurthor Name: Hasnain Zafar
#Description: This script will filter and put files based on their extensions into correct folder.

read -p "Enter the path of directory which contain files: " dir_path

while read files;
do
        case "$files" in
                *.jpg|*.jpeg|*.png) mkdir -p /images; mv "$files" /images;;
                *.mp3) mkdir -p /audio; mv "$files" /audio;;
                *.doc|*.docx|*.txt|*pdf) mkdir -p /documents; mv "$files" /documents;;
                *.xls|*.xlsx|*.csv) mkdir -p /spreadsheets; mv "$files" /spreadsheets;;
#               *.sh) mkdir -p /scripts; mv "$files" /scripts;;
                *.zip|*.tar|*.tar.gz|*.tar.bz2) mkdir -p /archives; mv "$files" /archives;;
                *.ppt|*.pptx) mkdir -p /presentations; mv "$files" /presentations;;
                *.mp4) mkdir -p /video; mv "$files" /video;;
                *);;
        esac
done < <(ls $dir_path)
