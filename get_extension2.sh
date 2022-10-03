#!/bin/bash

#Author Name: Hasnain Zafar
#Description: Used select statement to show different options to the user and exported the variables to the extension.csv file.

read -p "Enter your first name: " first_name
read -p "Enter your last name: " last_name
PS3="What is your Phone choice: "
select phone_choice in Headset Handheld;
do
	echo "You choice is $phone_choice"
	break
done
PS3="What is your departement: "
select dept_name in Finance Sales Customer\ Service Engineering;
do
	echo "Your departement is $dept_name"
	break
done
read -N 4 -p "Enter your 4 digit extension: " extension
read -N 4 -s -p "Enter your 4 digit access code: " access_code

echo "$first_name,$last_name,$extension,$access_code,$phone_choice,$dept_name" >> extension.csv
