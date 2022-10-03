#!/bin/bash

#Author Name: Hasnain Zafar
#Description: Get the extension information from users.

read -p "Enter your first name: " first_name
read -p "Enter your last name: " last_name
read -N 4 -p "Enter your 4 digit extension: " extension
read -N 4 -s -p "Enter your 4 digit access code: " access_code

echo "$first_name,$last_name,$extension,$access_code" >> extension.csv
