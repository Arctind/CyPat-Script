#!/bin/bash
echo -e "\e[36m---------banners---------\e[0m"
if test -f /etc/motd
then
  sed -i 's/\\v//' /etc/motd
  sed -i 's/\\s//' /etc/motd
  sed -i 's/\\r//' /etc/motd
  sed -i 's/\\m//' /etc/motd
  chown root:root /etc/motd
  chmod 644 /etc/motd
elif test -f /etc/issue
then
  sed -i 's/\\v//' /etc/motd
  sed -i 's/\\s//' /etc/motd
  sed -i 's/\\r//' /etc/motd
  sed -i 's/\\m//' /etc/motd
  echo "Authorized uses only. All activity may be monitored and reported." > /etc/issue
  chown root:root /etc/issue
  chmod 644 /etc/issue
elif test -f /etc/issue.net
then
  echo "Authorized uses only. All activity may be monitored and reported." > /etc/issue.net
  chown root:root /etc/issue.net
  chmod 644 /etc/issue.net
fi
