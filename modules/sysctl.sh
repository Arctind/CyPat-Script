#!/bin/bash
#net.ipv4.ip_forward = 0 is used to tell the system whether it can forward packets or not
echo -e "\e[36m---------ip_forward---------\e[0m"
if grep "net.ipv4.ip_forward" /etc/sysctl.conf
then
  sed -i "s/net.ipv4.ip_forward.*/net.ipv4.ip_forward=0/g" /etc/sysctl.conf
  sysctl -w net.ipv4.ip_forward=0
  sysctl -w net.ipv4.route.flush=1
else
  echo "net.ipv4.ip_forward=0" >> /etc/sysctl.conf
  sysctl -w net.ipv4.ip_forward=0
  sysctl -w net.ipv4.route.flush=1
fi

#net.ipv4.conf.all.send_redirects=0
#ICMP redirects used to send routing information to other hosts
#As a host itself does not act as a router, there is no need to send redirects
echo -e "\e[36m---------conf.all.send_redirects---------\e[0m"
if grep "net.ipv4.conf.all.send_redirects" /etc/sysctl.conf
then
  sed -i "s/net.ipv4.conf.all.send_redirects.*/net.ipv4.conf.all.send_redirects=0/g" /etc/sysctl.conf
  sysctl -w net.ipv4.conf.all.send_redirects=0
  sysctl -w net.ipv4.route.flush=1
else
  echo "net.ipv4.conf.all.send_redirects=0" >> /etc/sysctl.conf
  sysctl -w net.ipv4.conf.all.send_redirects=0
  sysctl -w net.ipv4.route.flush=1
fi

#net.ipv4.conf.default.send_redirects
echo -e "\e[36m---------conf.default.send_redirects---------\e[0m"
if grep "net.ipv4.conf.default.send_redirects" /etc/sysctl.conf
then
  sed -i "s/net.ipv4.conf.default.send_redirects.*/net.ipv4.conf.default.send_redirects=0/g" /etc/sysctl.conf
  sysctl -w net.ipv4.conf.default.send_redirects=0
  sysctl -w net.ipv4.route.flush=1
else
  echo "net.ipv4.conf.default.send_redirects=0" >> /etc/sysctl.conf
  sysctl -w net.ipv4.conf.default.send_redirects=0
  sysctl -w net.ipv4.route.flush=1
fi

#net.ipv4.conf.all.accept_source_route
#Source routing allows send to partially or fully specify route packets take through a network
echo -e "\e[36m---------conf.all.accept_source_route---------\e[0m"
if grep "net.ipv4.conf.all.accept_source_route" /etc/sysctl.conf
then
  sed -i "s/net.ipv4.conf.all.accept_source_route.*/net.ipv4.conf.all.accept_source_route=0/g" /etc/sysctl.conf
  sysctl -w net.ipv4.conf.all.accept_source_route=0
  sysctl -w net.ipv4.route.flush=1
else
  echo "net.ipv4.conf.all.accept_source_route=0" >> /etc/sysctl.conf
  sysctl -w net.ipv4.conf.all.accept_source_route=0
  sysctl -w net.ipv4.route.flush=1
fi

#net.ipv4.conf.default.accept_source_route
echo -e "\e[36m---------conf.default.accept_source_route---------\e[0m"
if grep "net.ipv4.conf.default.accept_source_route" /etc/sysctl.conf
then
  sed -i "s/net.ipv4.conf.default.accept_source_route.*/net.ipv4.conf.default.accept_source_route=0/g" /etc/sysctl.conf
  sysctl -w net.ipv4.conf.default.accept_source_route=0
  sysctl -w net.ipv4.route.flush=1
else
  echo "net.ipv4.conf.default.accept_source_route=0" >> /etc/sysctl.conf
  sysctl -w net.ipv4.conf.default.accept_source_route=0
  sysctl -w net.ipv4.route.flush=1
fi


#net.ipv4.conf.all.accept_redirects
#ICMP redirect messages are packets that convey routing information and tell host to send packets by alternative path
#way of allowing outside routing device to update system routing tables
echo -e "\e[36m---------conf.all.accept_redirects---------\e[0m"
if grep "net.ipv4.conf.all.accept_redirects" /etc/sysctl.conf
then
  sed -i "s/net.ipv4.conf.all.accept_redirects.*/net.ipv4.conf.all.accept_redirects=0/g" /etc/sysctl.conf
  sysctl -w net.ipv4.conf.all.accept_redirects=0
  sysctl -w net.ipv4.route.flush=1
else
  echo "net.ipv4.conf.all.accept_redirects=0" >> /etc/sysctl.conf
  sysctl -w net.ipv4.conf.all.accept_redirects=0
  sysctl -w net.ipv4.route.flush=1
fi

#net.ipv4.conf.default.accept_redirects
echo -e "\e[36m---------conf.default.accept_redirects---------\e[0m"
if grep "net.ipv4.conf.default.accept_redirects" /etc/sysctl.conf
then
  sed -i "s/net.ipv4.conf.default.accept_redirects.*/net.ipv4.conf.default.accept_redirects=0/g" /etc/sysctl.conf
  sysctl -w net.ipv4.conf.default.accept_redirects=0
  sysctl -w net.ipv4.route.flush=1
else
  echo "net.ipv4.conf.default.accept_redirects=0" >> /etc/sysctl.conf
  sysctl -w net.ipv4.conf.default.accept_redirects=0
  sysctl -w net.ipv4.route.flush=1
fi

#net.ipv4.conf.all.secure_redirects
#Same as regular ICMP redirects,  but come from gateways listed on default gateway list
#Assumed that gateways are known to your system, likely secure
echo -e "\e[36m---------conf.all.secure_redirects---------\e[0m"
if grep "net.ipv4.conf.all.secure_redirects" /etc/sysctl.conf
then
  sed -i "s/net.ipv4.conf.all.secure_redirects.*/net.ipv4.conf.all.secure_redirects=0/g" /etc/sysctl.conf
  sysctl -w net.ipv4.conf.all.secure_redirects=0
  sysctl -w net.ipv4.route.flush=1
else
  echo "net.ipv4.conf.all.secure_redirects=0" >> /etc/sysctl.conf
  sysctl -w net.ipv4.conf.all.secure_redirects=0
  sysctl -w net.ipv4.route.flush=1
fi

#net.ipv4.conf.default.secure_redirects
echo -e "\e[36m---------conf.default.secure_redirects---------\e[0m"
if grep "net.ipv4.conf.default.secure_redirects" /etc/sysctl.conf
then
  sed -i "s/net.ipv4.conf.default.secure_redirects.*/net.ipv4.conf.default.secure_redirects=0/g" /etc/sysctl.conf
  sysctl -w net.ipv4.conf.default.secure_redirects=0
  sysctl -w net.ipv4.route.flush=1
else
  echo "net.ipv4.conf.default.secure_redirects=0" >> /etc/sysctl.conf
  sysctl -w net.ipv4.conf.default.secure_redirects=0
  sysctl -w net.ipv4.route.flush=1
fi


#net.ipv4.conf.all.log_martians=1
#logs packets with un-routable source addresses to the kernel log
echo -e "\e[36m---------conf.all.log_martians---------\e[0m"
if grep "net.ipv4.conf.all.log_martians" /etc/sysctl.conf
then
  sed -i "s/net.ipv4.conf.all.log_martians.*/net.ipv4.conf.all.log_martians=1/g" /etc/sysctl.conf
  sysctl -w net.ipv4.conf.all.log_martians=1
  sysctl -w net.ipv4.route.flush=1
else
  echo "net.ipv4.conf.all.log_martians=1" >> /etc/sysctl.conf
  sysctl -w net.ipv4.conf.all.log_martians=1
  sysctl -w net.ipv4.route.flush=1
fi

#net.ipv4.conf.default.log_martians=1
echo -e "\e[36m---------conf.default.log_martians---------\e[0m"
if grep "net.ipv4.conf.default.log_martians" /etc/sysctl.conf
then
  sed -i "s/net.ipv4.conf.default.log_martians.*/net.ipv4.conf.default.log_martians=1/g" /etc/sysctl.conf
  sysctl -w net.ipv4.conf.default.log_martians=1
  sysctl -w net.ipv4.route.flush=1
else
  echo "net.ipv4.conf.default.log_martians=1" >> /etc/sysctl.conf
  sysctl -w net.ipv4.conf.default.log_martians=1
  sysctl -w net.ipv4.route.flush=1
fi

#net.ipv4.icmp_echo_ignore_broadcasts=1
#will cause system to ignore all ICMP echo and timestamp requests to broadcast and multicast addresses
echo -e "\e[36m---------icmp_echo_ignore_broadcasts---------\e[0m"
if grep "net.ipv4.icmp_echo_ignore_broadcasts" /etc/sysctl.conf
then
  sed -i "s/net.ipv4.icmp_echo_ignore_broadcasts.*/net.ipv4.icmp_echo_ignore_broadcasts=1/g" /etc/sysctl.conf
  sysctl -w net.ipv4.icmp_echo_ignore_broadcasts=1
  sysctl -w net.ipv4.route.flush=1
else
  echo "net.ipv4.icmp_echo_ignore_broadcasts=1" >> /etc/sysctl.conf
  sysctl -w net.ipv4.icmp_echo_ignore_broadcasts=1
  sysctl -w net.ipv4.route.flush=1
fi

#net.ipv4.icmp_ignore_bogus_error_responses=1
#prevents kernel from logging bogus responses (RFC-1122 non-compliant) from broadcast reframes
echo -e "\e[36m---------icmp_ignore_bogus_error_responses---------\e[0m"
if grep "net.ipv4.icmp_ignore_bogus_error_responses" /etc/sysctl.conf
then
  sed -i "s/net.ipv4.icmp_ignore_bogus_error_responses.*/net.ipv4.icmp_ignore_bogus_error_responses=1/g" /etc/sysctl.conf
  sysctl -w net.ipv4.icmp_ignore_bogus_error_responses=1
  sysctl -w net.ipv4.route.flush=1
else
  echo "net.ipv4.icmp_ignore_bogus_error_responses=1" >> /etc/sysctl.conf
  sysctl -w net.ipv4.icmp_ignore_bogus_error_responses=1
  sysctl -w net.ipv4.route.flush=1
fi

#net.ipv4.conf.all.rp_filter=1
#forces kernel to utilize reverse path filtering on received packet to determine if packet is valid
#if return packet does not go out the same interface that corresponding source packet came from, packet is dropped
echo -e "\e[36m---------conf.all.rp_filter---------\e[0m"
if grep "net.ipv4.conf.all.rp_filter" /etc/sysctl.conf
then
  sed -i "s/net.ipv4.conf.all.rp_filter.*/net.ipv4.conf.all.rp_filter=1/g" /etc/sysctl.conf
  sysctl -w net.ipv4.conf.all.rp_filter=1
  sysctl -w net.ipv4.route.flush=1
else
  echo "net.ipv4.conf.all.rp_filter=1" >> /etc/sysctl.conf
  sysctl -w net.ipv4.conf.all.rp_filter=1
  sysctl -w net.ipv4.route.flush=1
fi

#net.ipv6.conf.all.accept_ra
#disables system ability to accept v6 router advertisements
echo -e "\e[36m---------v6.conf.all.accept_ra---------\e[0m"
if grep "net.ipv6.conf.all.accept_ra" /etc/sysctl.conf
then
  sed -i "s/net.ipv6.conf.all.accept_ra.*/net.ipv6.conf.all.accept_ra=0/g" /etc/sysctl.conf
  sysctl -w net.ipv6.conf.all.accept_ra=0
  sysctl -w net.ipv6.route.flush=1
else
  echo "net.ipv6.conf.all.accept_ra=0" >> /etc/sysctl.conf
  sysctl -w net.ipv6.conf.all.accept_ra=0
  sysctl -w net.ipv6.route.flush=1
fi


#net.ipv6.conf.all.accept_redirects
#prevents system from accepting ICMP redirects
echo -e "\e[36m---------v6.conf.all.accept_redirects---------\e[0m"
if grep "net.ipv6.conf.all.accept_redirects" /etc/sysctl.conf
then
  sed -i "s/net.ipv6.conf.all.accept_redirects.*/net.ipv6.conf.all.accept_redirects=0/g" /etc/sysctl.conf
  sysctl -w net.ipv6.conf.all.accept_redirects=0
  sysctl -w net.ipv6.route.flush=1
else
  echo "net.ipv6.conf.all.accept_redirects=0" >> /etc/sysctl.conf
  sysctl -w net.ipv6.conf.all.accept_redirects=0
  sysctl -w net.ipv6.route.flush=1
fi

#kernel
echo -e "\e[36m---------kernel---------\e[0m"
if grep "kernel.exec-shield" /etc/sysctl.conf
then
  sed -i "s/kernel.exec-shield*/kernel.exec-shield=1/g" /etc/sysctl.conf
  sysctl -w kernel.exec-shield=1
else
  echo "kernel.exec-shield=1" >> /etc/sysctl.conf
  sysctl -w kernel.exec-shield=1
fi
if grep "kernel.randomize_va_space" /etc/sysctl.conf
then
  sed -i "s/kernel.randomize_va_space*/kernel.randomize_va_space=1/g" /etc/sysctl.conf
  sysctl -w kernel.randomize_va_space=1
else
  echo "kernel.randomize_va_space=1" >> /etc/sysctl.conf
  sysctl -w kernel.randomize_va_space=1
fi
if grep "kernel.sysrq" /etc/sysctl.conf
then
  sed -i "s/kernel.sysrq*/kernel.sysrq=0/g"
  sysctl -w kernel.sysrq=0
else
  echo "kernel.sysrq=0" >> /etc/sysctl.conf
  sysctl -w kernel.sysrq=0
fi

#tcp
echo -e "\e[36m---------tcp---------\e[0m"
if grep "net.ipv4.tcp" /etc/sysctl
then
  sed -i "s/net.ipv4.tcp_sack*/net.ipv4.tcp_sack=0/g" /etc/sysctl.conf
  sed -i "s/net.ipv4.tcp_timestamps*/net.ipv4.tcp_timestamps=0/g" /etc/sysctl.conf
  sed -i "s/net.ipv4.tcp_syncookies*/net.ipv4.tcp_syncookies=1/g" /etc/sysctl.conf
  sed -i "s/net.ipv4.tcp_rfc1337*/net.ipv4.tcp_rfc1337=1/g"
  sysctl -w net.ipv4.tcp_sack=0
  sysctl -w net.ipv4.tcp_timestamps=0
  sysctl -w net.ipv4.tcp_syncookies=1
  sysctl -w net.ipv4.tcp_rfc1337=1
else
  echo "net.ipv4.tcp_sack=0" >> /etc/sysctl.conf
  echo "net.ipv4.tcp_timestamps=0" >> /etc/sysctl.conf
  echo "net.ipv4.tcp_syncookies=1" >> /etc/sysctl.conf
  echo "net.ipv4.tcp_rfc1337=1" >> /etc/sysctl.conf
  sysctl -w net.ipv4.tcp_sack=0
  sysctl -w net.ipv4.tcp_timestamps=0
  sysctl -w net.ipv4.tcp_syncookies=1
  sysctl -w net.ipv4.tcp_rfc1337=1
fi
