🔐 Disclaimer

Use responsibly and legally. This tool is provided for ethical security testing and research.

![ALFA Demo](https://raw.githubusercontent.com/socalit/alfa-wifi/main/docs/demo.png)


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

## Use:

alfa-wifi wlan1

---

## Installation

System wide install:

```bash
sudo curl -s https://raw.githubusercontent.com/socalit/alfa-wifi/main/alfa-wifi.sh -o /usr/local/bin/alfa-wifi
sudo chmod +x /usr/local/bin/alfa-wifi
