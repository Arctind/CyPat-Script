#!/bin/bash
echo -e "\e[36m---------selinux---------\e[0m"
echo -e "\e[32mEnable selinux in bootloader configuration pg. 74\e[0m"
read tmp < /dev/tty
if test -f /etc/selinux/config
then
  rm -Rf /etc/selinux/config
fi
touch /etc/selinux/config
echo "SELINUX=enforcing" >> /etc/selinux/config
echo "SELINUXTYPE=ubuntu" >> /etc/selinux/config
