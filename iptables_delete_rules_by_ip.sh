#!/bin/bash

# iptablescmd=$1 ip_address=$2 in_chain=$3
# example: ./iptables_delete_rules_by_ip.sh /usr/local/sbin/iptables 192.168.168.194 FWKNOP_INPUT


${1} -L -v --line-numbers | grep ACCEPT.*${2}.*_exp_ | awk '{ print $1 }' | sort -nr | xargs -n 1 ${1} -D ${3}
