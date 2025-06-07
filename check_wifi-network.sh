#!/bin/bash
NAME="Hyi_vam_a_ne_wifi-2.4Ghz"
WIFI=$(nmcli device wifi | grep "*" | awk '{print $3}')
DEVICE=$(nmcli device | grep "wifi" | awk '{print $1}')
if [[ "$WIFI" != "$NAME" ]];then 	
	echo "Warning"
	nmcli device disconnect $DEVICE
	nmcli device wifi connect $NAME
	echo "$WiFI"
else
	echo "Access"
fi
exit 0
