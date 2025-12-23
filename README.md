

![ALFA Demo](https://raw.githubusercontent.com/socalit/alfa-wifi/main/docs/demo.png)

[![Buy Me a Coffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-support-%23FFDD00?logo=buymeacoffee&logoColor=black)](https://buymeacoffee.com/socal370xs)

# Disclaimer

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

## Use:
```
alfa-wifi wlan1
```
---

## Installation
System wide install:

```bash
sudo curl -s https://raw.githubusercontent.com/socalit/alfa-wifi/main/alfa-wifi.sh -o /usr/local/bin/alfa-wifi
sudo chmod +x /usr/local/bin/alfa-wifi
```
### ⭐ **Star the GitHub repo**  
### Share it with communities  
### Open issues or request features  

If this project saved you time or solved a problem, consider supporting development:

[![Buy Me a Coffee](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&slug=socal370xs&button_colour=FFDD00&font_colour=000000&font_family=Arial&outline_colour=000000&coffee_colour=ffffff)](https://buymeacoffee.com/socal370xs)
