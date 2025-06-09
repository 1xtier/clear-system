#!/usr/bin/env bash
set -s 
USER=$(whoami)
for srv in $(cat server.txt)
do 
    ssh -i ~/root/.ssh/id_ed25519 $USER@$srv 'mkdir /opt/backup/student' 
    rsync -avz -e "ssh -i /root/.ssh/id_ed25519" /opt/backup/student/ $USER@$srv:/opt/backup/student
done 
wait
