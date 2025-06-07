#!/bin/bash

enable-usb() {
touch /etc/udev/rules.d/85-no-automount.rules
cat << EOF >> /etc/udev/rules.d/85-no-automount.rules
SUBSYSTEMS=="usb", ENV{UDISKS_AUTO}="0"
EOF
if [ -x "$(command -v systemctl)" ]; then
  sudo systemctl restart udisks2.service
fi
}
disable-usb() {
rm -rf  /etc/udev/rules.d/85-no-automount.rules
if [ -x "$(command -v systemctl)" ]; then
  sudo systemctl restart udisks2.service
fi
}
help-cli() {
	echo "usb --disable | Enables auto-manting of usb devices."
	echo "usb --enable | Disables auto-manting of usb devices."
}

while [ -n "$1" ]
	do
    case "$1" in
    --enable )enable-usb;;
    --disable )disable-usb;;
	--help )help-cli;;
	  * )help-cli;;
    esac
	shift
done

