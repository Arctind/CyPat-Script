#!/bin/bash
echo -e "\e[31mPress ENTER when forensics are completed\e[0m"
read tmp
echo -e "\e[31mInstall libpam-cracklib\e[0m"
read tmp

#lightdm
chmod 777 modules/lightdm.sh
sed -i -e 's/\r$//' modules/lightdm.sh
./modules/lightdm.sh

#login.defs
chmod 777 modules/logindefs.sh
sed -i -e 's/\r$//' modules/logindefs.sh
./modules/logindefs.sh

#pam
chmod 777 modules/pam.sh
sed -i -e 's/\r$//' modules/pam.sh
./modules/pam.sh

#firewall
chmod 777 modules/firewall.sh
sed -i -e 's/\r$//' modules/firewall.sh
./modules/firewall.sh

#CIS.conf
chmod 777 modules/cis.sh
sed -i -e 's/\r$//' modules/cis.sh
./modules/cis.sh

#sticky bit
chmod 777 modules/stickybit.sh
sed -i -e 's/\r$//' modules/stickybit.sh
./modules/stickybit.sh

#automounting
chmod 777 modules/automnt.sh
sed -i -e 's/\r$//' modules/automnt.sh
./modules/automnt.sh

#filesystem integrity
chmod 777 modules/fileinteg.sh
sed -i -e 's/\r$//' modules/fileinteg.sh
./modules/fileinteg.sh

#memory dump
chmod 777 modules/memdump.sh
sed -i -e 's/\r$//' modules/memdump.sh
./modules/memdump.sh

#ASLR (randomly places virtual memory regions)
chmod 777 modules/aslr.sh
sed -i -e 's/\r$//' modules/aslr.sh
./modules/aslr.sh

#packagesstudent
packagesstudent
chmod 777 modules/packages.sh
sed -i -e 's/\r$//' modules/packages.sh
./modules/packages.sh

#prelinking
prelink -ua
apt-get remove prelink

#check for selinux or AppArmor
echo -e "\e[32minstall either selinux or AppArmor\e[0m"
read tmp

#selinux
chmod 777 modules/selinux.sh
sed -i -e 's/\r$//' modules/selinux.sh
./modules/selinux.sh

#AppArmor
chmod 777 modules/apparmor.sh
sed -i -e 's/\r$//' modules/apparmor.sh
./modules/apparmor.sh

#banners
chmod 777 modules/banners.sh
sed -i -e 's/\r$//' modules/banners.sh
./modules/banners.sh

#sysctl
chmod 777 modules/sysctl.sh
sed -i -e 's/\r$//' modules/sysctl.sh
./modules/sysctl.sh

#passwords
FILE=allowed_users.txt
while read LINE
do
  echo "*JkyU58Pt2_vs=3CWTHb" | passwd --stdin $LINE
done < $FILE
