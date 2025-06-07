#!/bin/bash
USERS=student
clearsystem() {
    
	killall -u $USERS
	rm -rf /home/student
	cp -r /opt/backup/student /home
	chown -R student:student /home/student
}
clearsystem