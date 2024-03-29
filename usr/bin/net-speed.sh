#!/bin/sh

#~/.local/bin/net-speed.sh
#/usr/bin/
# Authors:
# - Moritz Warning <moritzwarning@web.de> (2016)
# - Zhong Jianxin <azuwis@gmail.com> (2014)
#
# See file LICENSE at the project root directory for license information.
#
# i3status.conf should contain:
# general {
#   output_format = i3bar
# }
#
# i3 config looks like this:
# bar {
#   status_command exec /usr/share/doc/i3status/contrib/net-speed.sh
# }
#
# Single interface:
# ifaces="eth0"
#
# Multiple interfaces:
# ifaces="eth0 wlan0"
#
# set -e

# Don't run as root or sudo
if (( $(id -u) == 0 )); then
    echo "You should not run this script as root"
    echo "Exiting..."
    exit;
fi
# Auto detect interfaces
ifaces=$(ls /sys/class/net | grep -E '(eth|wlan|enp|wlp|eno|net)')
#ifaces="eno1"
last_time=0
last_rx=0
last_tx=0
rate=""



update_rate() {
  local time=$(date +%s)
  local rx=0 tx=0 tmp_rx tmp_tx

  for iface in $ifaces; do
    read tmp_rx < "/sys/class/net/${iface}/statistics/rx_bytes"
    read tmp_tx < "/sys/class/net/${iface}/statistics/tx_bytes"
    rx=$(( rx + tmp_rx ))
    tx=$(( tx + tmp_tx ))
  done

  local interval=$(( $time - $last_time ))
  if [ $interval -gt 0 ]; then
    rate="$(readable $(( (rx - last_rx) / interval ))) $(readable $(( (tx - last_tx) / interval )))"
  else
    rate=""
  fi

  last_time=$time
  last_rx=$rx
  last_tx=$tx
}

i3status | (read line && echo "$line" && read line && echo "$line" && read line && echo "$line" && update_rate && while :
do
  read line
  update_rate
  #echo "| ${rate} | ${line#\[}" || exit 1
  #echo "\"${rate}\" },${line#,\[}" || exit 1
  echo ",[{\"color\":\"#ffffff\",\"full_text\":\" ${rate}\" },${line#,\[}" || exit 1
done)
