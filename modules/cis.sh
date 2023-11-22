#!/bin/bash
#CIS.conf
echo -e "\e[36m---------CIS.conf---------\e[0m"
if test -f /etc/modprobe.d/CIS.conf
then
  cat /etc/modprobe.d/CIS.conf
  echo -e "\e[31mProceed with CIS.conf configuration? (y/n)\e[0m"
  read cis < /dev/tty
  if [ $cis='y' ];
  then
    rm -Rf /etc/modprobe.d/CIS.conf
    touch /etc/modprobe.d/CIS.conf
    echo install cramfs /bin/true >> /etc/modprobe.d/CIS.conf
    echo install freevxfs /bin/true >> /etc/modprobe.d/CIS.conf
    echo install jffs2 /bin/true >> /etc/modprobe.d/CIS.conf
    echo install hfs /bin/true >> /etc/modprobe.d/CIS.conf
    echo install hfsplus /bin/true >> /etc/modprobe.d/CIS.conf
    echo install udf /bin/true >> /etc/modprobe.d/CIS.conf
    rmmod cramfs
    rmmod freevxfs
    rmmod jffs2
    rmmod hfs
    rmmod hfsplus
    rmmod udf
  fi
else
  touch /etc/modprobe.d/CIS.conf
  echo install cramfs /bin/true >> /etc/modprobe.d/CIS.conf
  echo install freevxfs /bin/true >> /etc/modprobe.d/CIS.conf
  echo install jffs2 /bin/true >> /etc/modprobe.d/CIS.conf
  echo install hfs /bin/true >> /etc/modprobe.d/CIS.conf
  echo install hfsplus /bin/true >> /etc/modprobe.d/CIS.conf
  echo install udf /bin/true >> /etc/modprobe.d/CIS.conf
  rmmod cramfs
  rmmod freevxfs
  rmmod jffs2
  rmmod hfs
  rmmod hfsplus
  rmmod udf
fi
