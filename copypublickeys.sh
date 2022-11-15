#!/bin/bash

#To copy as many public keys for ssh login into remote machines.
#Create a file which contains IP addresses of each remote machine on each line.
for each_ip in $(cat fileofips.txt);
do
        ssh $each_ip mkdir -m 700 ~/.ssh 2>/dev/null
        scp -pr ~/.ssh/id_rsa.pub root@$each_ip:~/.ssh/authorized_keys;
done
