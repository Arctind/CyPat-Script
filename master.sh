#!/bin/bash
echo -e "\e[31mPress ENTER when forensics are completed\e[0m"
read tmp
echo -e "\e[31mInstall libpam-cracklib\e[0m"
read tmp

#lightdm
chmod 777 modules/lightdm.sh
./modules/lightdm.sh

#login.defs
chmod 777 modules/logindefs.sh
./modules/logindefs.sh

#pam
chmod 777 modules/pam.sh
./modules/pam.sh

#firewall
chmod 777 modules/firewall.sh
./modules/firewall.sh

#CIS.conf
chmod 777 modules/cis.sh
./modules/cis.sh

#sticky bit
chmod 777 modules/stickybit.sh
./modules/stickybit.sh

#automounting
chmod 777 modules/automnt.sh
./modules/automnt.sh

#filesystem integrity
chmod 777 modules/fileinteg.sh
./modules/fileinteg.sh

#memory dump
chmod 777 modules/memdump.sh
./modules/memdump.sh

#ASLR (randomly places virtual memory regions)
chmod 777 modules/aslr.sh
./modules/aslr.sh

#packages
chmod 777 modules/packages.sh
./modules/packages.sh

#prelinking
prelink -ua
apt-get remove prelink

#selinux
chmod 777 modules/selinux.sh
./modules/selinux.sh

#AppArmor
chmod 777 modules/apparmor.sh
./modules/apparmor.sh

#check for selinux or AppArmor
echo -e "\e[32minstall either selinux or AppArmor\e[0m"
read tmp

#banners
chmod 777 modules/banners.sh
./modules/banners.sh
