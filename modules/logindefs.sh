#!/bin/bash
#login.defs
echo -e "\e[36m---------login.defs---------\e[0m"
cp /etc/login.defs backups/
ld=/etc/login.defs
sed -i 's/PASS_MAX_DAYS.*/PASS_MAX_DAYS  90/' $ld
sed -i 's/PASS_MIN_DAYS.*/PASS_MIN_DAYS  7/' $ld
sed -i 's/PASS_WARN_AGE.*/PASS_WARN_AGE  14/' $ld
if grep "ENCRYPT_METHOD" $ld
then
  sed -i 's/ENCRYPT_METHOD.*/ENCRYPT_METHOD  SHA512/' $ld
else
  echo "ENCRYPT_METHOD  SHA512" >> $ld
fi
