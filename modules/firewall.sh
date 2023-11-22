#!/bin/bash
#firewall
echo -e "\e[36m---------firewall---------\e[0m"
echo -e "\e[31mProceed with firewall configuration? (y/n)\e[0m"
read firewallConfig < /dev/tty
if [ $firewallConfig='y' ];
then
  ufw enable
  FILE=allowed_services.txt
  while read LINE
  do
    ufw allow $LINE/tcp
  done < $FILE
  ufw deny 2049
  ufw deny 515
  ufw deny 111
fi
