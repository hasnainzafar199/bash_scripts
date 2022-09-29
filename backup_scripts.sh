#!/bin/bash

# Author's Name: Hasnain Zafar
# Date Created: 09/28/2022
# Last Modified: 09/28/2022

#Description: This script will take the backup of the directory where are running it in.
#Usuage: Use backup_script.sh when you need a backup of a script.

tar -cvzf backup_dir_"$(date +%d-%m-%y_%H_%M_%S)".tar .
exit 0
