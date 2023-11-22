#!/bin/bash
#memory dump
echo -e "\e[36m---------memory dump---------\e[0m"
if grep "hard    core" /etc/security/limits.conf
then
  sed 's/hard    core.*/hard    core            0/'
else
  echo "hard    core            0" >> /etc/security/limits.conf
fi
if grep "fs.suid_dumpable" /etc/sysctl.conf
then
  sed 's/fs.suid_dumpable.*/fs.suid_dumpable = 0/'
  sysctl -w fs.suid_dumpable=0
else
  echo "fs.suid_dumpable = 0" >> /etc/sysctl.conf
  sysctl -w fs.suid_dumpable=0
fi
