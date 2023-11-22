#!/bin/bash
echo -e "\e[36m---------app armor---------\e[0m"
echo -e "\e[32mEnable app armor in bootloader configuration pg. 80\e[0m"
read tmp < /dev/tty
aa-enforce /etc/apparmor.d/*
