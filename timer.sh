#!/bin/bash

total_seconds=""
while getopts "m:s:" opts;
do
        case "$opts" in
                m) total_seconds=$(( $total_seconds + $OPTARG * 60 ));;
                s) total_seconds=$(( total_seconds + $OPTARG ));;
                \?) echo "Enter a valid option with argument";;
        esac
done

while [ $total_seconds -gt 0 ];
do
        echo "$total_seconds"
        total_seconds=$(( $total_seconds - 1 ))
        sleep 1s
done
echo "Time's up"
