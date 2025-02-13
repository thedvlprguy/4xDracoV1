# 🕵️‍♂️ OSINT Automation Script

## 🌍 Overview
This script automates the process of gathering Open Source Intelligence (OSINT) by leveraging various tools such as `theHarvester`, `sublist3r`, `whois`, and `nmap`. It provides a streamlined method for reconnaissance and enumeration on a target domain. 🚀

## ✨ Features
- 🔍 Harvests email addresses and subdomains from public sources.
- 📜 Performs WHOIS lookup to gather domain registration details.
- 🔥 Scans open ports using Nmap for potential vulnerabilities.
- 🌐 Hosts a simple HTTP server to serve collected results.

## ⚙️ Prerequisites
Before running the script, ensure you have the following dependencies installed:

- 🐍 Python 3
- 🔎 `theHarvester`
- 🌍 `sublist3r`
- 🏷️ `whois`
- 🔧 `nmap`
- 🌐 `SimpleHTTPServer` (built-in with Python 2) or `http.server` (Python 3)

You can install the necessary Python packages using:
```sh
pip install theHarvester sublist3r
```

Make sure `whois` and `nmap` are installed on your system:
```sh
sudo apt install whois nmap
```

## 📥 Installation
1. 📂 Clone the repository:
```sh
git clone https://github.com/yourusername/osint-automation.git
cd osint-automation
```
2. 🔑 Ensure the script has execution permissions:
```sh
chmod +x osint_script.py
```

## ▶️ Usage
Run the script with:
```sh
python3 osint_script.py <target_domain>
```
Replace `<target_domain>` with the actual domain you want to analyze.

### 🏆 Example:
```sh
python3 osint_script.py example.com
```

To start the HTTP server and serve the results:
```sh
python3 -m http.server 8080
```
Access it via: `http://localhost:8080` 🌎

## 📜 Output
The script generates output in text format containing:
- 📧 Emails found
- 🌐 Subdomains discovered
- 🏷️ WHOIS information
- 🔥 Open ports and services

## ⚠️ Disclaimer
This script is intended for educational and ethical hacking purposes only. ❌ Unauthorized use against systems you do not own is illegal. 🚨 The author is not responsible for any misuse.

## 📝 License
This project is licensed under the MIT License. 📄

