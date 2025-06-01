🔐 Disclaimer

Use responsibly and legally. This tool is provided for ethical security testing and research.

# alfa-wifi

Interactive tool for managing the **ALFA AWUS036ACH** Wi-Fi adapter (RTL8812AU) on Kali Linux.  
Includes quick toggles for monitor mode, MAC address spoofing, and power boosting.

---

## Features

- Switch between **Monitor** and **Managed** mode
- Spoof with a **Random** or **Custom** MAC address
- Boost **transmit power** (e.g., to 30 dBm using BO reg domain)
- View interface info (current mode, MAC, signal)

---

## Requirements

- Kali Linux (Rolling or Debian-based)
- ALFA AWUS036ACH (or other RTL8812AU-based adapter)
- Packages: `iw`, `iproute2`, `wireless-tools`, `hexdump`, `sudo`

---

## Installation

Clone the repo and run the script:

```bash
git clone https://github.com/socalit/alfa-wifi.git
cd alfa-wifi
chmod +x alfa-wifi.sh
./alfa-wifi.sh wlan1
