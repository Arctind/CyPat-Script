#!/bin/bash
echo -e "\e[36m---------services---------\e[0m"
if test -f /etc/inetd.conf
then
  sed -i 's/^chargen/#chargen/'
  sed -i 's/^daytime/#daytime/'
  sed -i 's/^discard/#discard/'
  sed -i 's/^echo/#echo/'
  sed -i 's/^time/#time/'
  sed -i 's/^talk/#talk/'
  sed -i 's/^ntalk/#ntalk/'
  apt purge telnet
  apt purge tftp
fi
cp /etc/init/cups.conf ../backups/
sed -i '/^start on/,/^stop on/{d;}' /etc/init/cups.conf
