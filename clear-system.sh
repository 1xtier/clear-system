#!/bin/bash
DT=$(date +"%Y-%m-%d")
LOG=/var/log/clear-system.log
USERS=student
LOGFILE=$(tail -n 1 $LOG)


clearlogfile() {
	local LOG1=$(wc -l < $LOG)
	local AA=10
	if [ "$LOG1" -gt "$AA" ] 
	then
		sed -i '1,5d' $LOG
	else 
		echo "ok"
	fi
}
clearsystem() {
	killall -u $USERS
	rm -rf /home/student
	cp -r /opt/backup/student /home
	chown -R student:student /home/student
	echo "$DT" >> $LOG
}


if [ "$LOGFILE" == "$DT" ]; then 
	echo "date - ok"
else 
	echo "date no"
	clearsystem
	clearlogfile
fi
