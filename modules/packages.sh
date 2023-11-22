#!/bin/bash
#packages
echo -e "\e[36m---------packages---------\e[0m"
truncate -s 0 ../tmp.txt
touch ../diff.txt
dpkg --get-selections | cut -f1 >> ../tmp.txt

FILE=../tmp.txt
while read LINE
do
  if grep ^$LINE$ ../bad_packages.txt
  then
    echo -e "\e31mMalicious package found $LINE\e[0m"
    read malChoice < /dev/tty
    echo $LINE >> found
  fi
done < $FILE

#truncate -s 0 ../tmp.txt
#truncate -s 0 ../diff.txt
#dpkg --get-selections | cut -f1 >> ../diff.txt
#fgrep -v -f ../diff.txt ../default_packages.txt >> ../tmp.txt
#FILE=../tmp.txt
#while read LINE
#do
#  echo -e "\e[32mget rid of package (y/n/(s)kip): $LINE\e[0m"
#  read packChoice
#  if [ $packChoice='y' ];
#  then
#    apt purge $LINE
#  fi
#done < $FILE
