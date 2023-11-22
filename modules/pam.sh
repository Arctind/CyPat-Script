#!/bin/bash
#pam
echo -e "\e[36m---------pam---------\e[0m"
#common-password
echo -e "\e[36m---------common-password---------\e[0m"
cp /etc/pam.d/common-password backups/
cp=/etc/pam.d/common-password
if grep "minlen" $cp
then
  sed -i 's/minlen.*/minlen=14/' $cp
else
  sed -i '/pam_unix.so/ s/$/ minlen=8/' $cp
fi
if grep -Fq "remember=" $cp
then
  sed -i 's/remember=.*/remember=5/' $cp
else
  sed -i '/pam_unix.so/ s/$/ remember=5/' $cp
fi
sed -i '/pam_cracklib.so/c\password        requisite                       pam_cracklib.so retry=3 minlen=14 difok=3 ucredit=-1 lcredit=-2 dcredit=-1 ocredit=-1' $cp
