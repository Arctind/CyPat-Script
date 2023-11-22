#!/bin/bash
#lightdm
echo -e "\e[36m---------lightdm---------\e[0m"
cp /etc/lightdm/lightdm.conf backups
echo allow-guest=false >> /etc/lightdm/lightdm.conf
sed -i 's/autologin-user=.*//' /etc/lightdm/lightdm.conf
echo greeter-hide-users=true >> /etc/lightdm/lightdm.conf
