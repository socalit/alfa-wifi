#!/bin/bash

# alfa-wifi.sh - ALFA AWUS036ACH Wi-Fi utility for mode, MAC, and power control

interface=${1:-wlan1}

function show_menu() {
  clear
  echo "📡 ALFA Wi-Fi Tool for $interface"
  echo "────────────────────────────────────"
  echo "1) Set to Monitor Mode"
  echo "2) Set to Managed Mode"
  echo "3) Set Random MAC Address"
  echo "4) Set Custom MAC Address"
  echo "5) Boost Transmit Power (30 dBm)"
  echo "6) Show Interface Info"
  echo "7) Exit"
  echo -n "Select option: "
}

function set_monitor() {
  sudo ip link set $interface down
  sudo iw dev $interface set type monitor
  sudo ip link set $interface up
  echo "[✓] $interface set to monitor mode"
}

function set_managed() {
  sudo ip link set $interface down
  sudo iw dev $interface set type managed
  sudo ip link set $interface up
  echo "[✓] $interface set to managed mode"
}

function random_mac() {
  sudo ip link set $interface down
  mac=$(hexdump -n6 -e '/1 ":%02X"' /dev/urandom | sed 's/^://')
  sudo ip link set $interface address $mac
  sudo ip link set $interface up
  echo "[✓] Random MAC set: $mac"
}

function custom_mac() {
  read -p "Enter MAC address (e.g. 00:11:22:33:44:55): " mac
  sudo ip link set $interface down
  sudo ip link set $interface address $mac
  sudo ip link set $interface up
  echo "[✓] Custom MAC set: $mac"
}

function boost_power() {
  echo "[!] Attempting to set txpower to 30 dBm..."
  sudo ip link set $interface down
  sudo iw reg set BO  # Bolivia = max power
  sudo iw dev $interface set txpower fixed 3000
  sudo ip link set $interface up
  echo "[✓] txpower set to 30 dBm (if supported)"
}

function show_info() {
  echo "─────────────────────────────"
  iw dev $interface info
  iwconfig $interface
  echo
  echo "MAC Address: $(cat /sys/class/net/$interface/address)"
  echo "─────────────────────────────"
}

while true; do
  show_menu
  read -r opt
  case $opt in
    1) set_monitor ;;
    2) set_managed ;;
    3) random_mac ;;
    4) custom_mac ;;
    5) boost_power ;;
    6) show_info ;;
    7) exit 0 ;;
    *) echo "Invalid option." ;;
  esac
  echo; read -p "Press Enter to continue..."
done
