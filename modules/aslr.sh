#!/bin/bash
#ASLR (randomly places virtual memory regions)
echo -e "\e[36m---------ASLR---------\e[0m"
if grep "kernel.randomize_va_space" /etc/sysctl.conf
then
  sed 's/kernel.randomize_va_space.*/kernel.randomize_va_space = 2/'
  sysctl -w kernel.randomize_va_space=2
else
  echo "kernel.randomize_va_space = 2"
  sysctl -w kernel.randomize_va_space=2
fi
