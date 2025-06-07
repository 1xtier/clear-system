#/bin/bash 
clone() {
git clone https://github.com/1xtier/clear-system.git /opt/codos
cp -r /opt/codos/cod-os /etc/
cp -r /opt/codos/systemd/* /etc/systemd/system
systemctl daemon-reload
}
clone


