#!/bin/bash
#filesystem integrity
echo -e "\e[36m---------aide---------\e[0m"
apt-get install aide aide-common
aideinit
if test -f /var/spool/cron/root
then
  /usr/bin/crontab /var/spool/cron/root
else
  touch /var/spool/cron/root
  /usr/bin/crontab /var/spool/cron/root
fi
echo 0 5 * * * /usr/bin/aide --config /etc/aide/aide.conf --check >> /var/spool/cron/root
cat /var/spool/cron/root > tmp
if grep "aide" tmp.txt
then
  echo -e "\e[32mSuccessful\e[0m"
else
  echo -e "\e[31mFAILED\e[0m"
fi
