#!/bin/bash

#Author Name: Hasnain Zafar
#Description: Will prompt options to run a particular script.

PS3="Select the script that you want to run, [f] folder_organiser.sh [c] cruft_remover.sh: "
select script in f c;
do
        case $script in
                f) ./folder_organiser.sh;;
                c) ./cruft_remover.sh;;
        esac
        break
done
