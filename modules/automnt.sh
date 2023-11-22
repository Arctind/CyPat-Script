#!/bin/bash
#automounting
echo -e "\e[36m---------automounting---------\e[0m"
if test -f /etc/init/autofs.conf
then
  sed '/start on runlevel/c\#start on runlevel [2345]' /etc/init/autofs.conf
fi

#boot settings
echo -e "\e[36m---------grub---------\e[0m"
chown root:root /boot/grub/grub.cfg
chmod og-rwx /boot/grub/grub.cfg
update-grub
