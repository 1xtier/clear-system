#!/bin/bash
DT=$(date +"%Y-%m-%d %H:%M")
LOG=/var/log/clear-system.log
USERS=student
killall -u $USERS
echo "Clear system $DT" >> $LOG
echo "__ Clear home dir User Admin" >> $LOG
rm -rf /home/student
echo "__ Copy backup dir user Admin" >> $LOG
cp -r /opt/backup/student /home
echo "Policity User Admin" >> $LOG
chown -R student:student /home/student
echo "----Exit-----" >> $LOG
