#!/bin/bash
#sticky bit
echo -e "\e[36m---------sticky bit---------\e[0m"
df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type d -perm -0002 2>/dev/null | xargs chmod a+t
