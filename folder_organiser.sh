#!/bin/bash

#Aurthor Name: Hasnain Zafar
#Description: This script will filter and put files based on their extensions into correct folder.

read -p "Enter the path of directory which contain files: " dir_path

while read files;
do
        case "$files" in
                *.jpg|*.jpeg|*.png) mkdir -p images && mv *.jpg *.jpeg *.png images
                *.mp3) mkdir -p audio && mv *.mp3 audio;;
                *.doc|*.docx|*.txt|*pdf) mkdir -p documents && mv *.docx *.doc *.txt *pdf documents;;
                *.xls|*.xlsx|*.csv) mkdir -p spreadsheets && mv *.xls *.xlsx *.csv spreadsheets;;
#               *.sh) mkdir -p scripts && mv *.sh scripts;;
                *.zip|*.tar|*.tar.gz|*.tar.bz2) mkdir -p archives && mv *.zip *.tar *.tar.gz *.tar.bz2 archives;;
                *.ppt|*.pptx) mkdir -p presentations && mv *.ppt *.pptx presentations;;
                *.mp4) mkdir -p video && mv *.mp4 video;;
                *);;
        esac
done < <(ls $dir_path)
