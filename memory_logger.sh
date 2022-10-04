#!/bin/bash

#Author Name: Hasnain Zafar
#Description: If $HOME/performance directory does not exists, will be created and also free command output will be directed to the $HOME/performance/memory.log.

if [ -d $HOME/performance ]; then
        echo "It exists"
else
        mkdir $HOME/performance
        echo "Created $HOME/performance"
fi

free >> $HOME/performance/memory.log
