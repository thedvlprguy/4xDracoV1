#!/bin/bash

# Check if running as root
if [ "$EUID" -ne 0 ]; then 
    echo "Please run as root (use sudo)"
    exit
fi

clear
mkdir -p Tools
clear 
echo -e '\033[31;40;1m
 
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣤⣤⣤⡼⠀⢀⡀⣀⢱⡄⡀⠀⠀⠀⢲⣤⣤⣤⣤⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣾⣿⣿⣿⣿⣿⡿⠛⠋⠁⣤⣿⣿⣿⣧⣷⠀⠀⠘⠉⠛⢻⣷⣿⣽⣿⣿⣷⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⣴⣞⣽⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠠⣿⣿⡟⢻⣿⣿⣇⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⢦⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣠⣿⡾⣿⣿⣿⣿⣿⠿⣻⣿⣿⡀⠀⠀⠀⢻⣿⣷⡀⠻⣧⣿⠆⠀⠀⠀⠀⣿⣿⣿⡻⣿⣿⣿⣿⣿⠿⣽⣦⡀⠀⠀⠀⠀
⠀⠀⠀⠀⣼⠟⣩⣾⣿⣿⣿⢟⣵⣾⣿⣿⣿⣧⠀⠀⠀⠈⠿⣿⣿⣷⣈⠁⠀⠀⠀⠀⣰⣿⣿⣿⣿⣮⣟⢯⣿⣿⣷⣬⡻⣷⡄⠀⠀⠀
⠀⠀⢀⡜⣡⣾⣿⢿⣿⣿⣿⣿⣿⢟⣵⣿⣿⣿⣷⣄⠀⣰⣿⣿⣿⣿⣿⣷⣄⠀⢀⣼⣿⣿⣿⣷⡹⣿⣿⣿⣿⣿⣿⢿⣿⣮⡳⡄⠀⠀
⠀⢠⢟⣿⡿⠋⣠⣾⢿⣿⣿⠟⢃⣾⢟⣿⢿⣿⣿⣿⣾⡿⠟⠻⣿⣻⣿⣏⠻⣿⣾⣿⣿⣿⣿⡛⣿⡌⠻⣿⣿⡿⣿⣦⡙⢿⣿⡝⣆⠀
⠀⢯⣿⠏⣠⠞⠋⠀⣠⡿⠋⢀⣿⠁⢸⡏⣿⠿⣿⣿⠃⢠⣴⣾⣿⣿⣿⡟⠀⠘⢹⣿⠟⣿⣾⣷⠈⣿⡄⠘⢿⣦⠀⠈⠻⣆⠙⣿⣜⠆
⢀⣿⠃⡴⠃⢀⡠⠞⠋⠀⠀⠼⠋⠀⠸⡇⠻⠀⠈⠃⠀⣧⢋⣼⣿⣿⣿⣷⣆⠀⠈⠁⠀⠟⠁⡟⠀⠈⠻⠀⠀⠉⠳⢦⡀⠈⢣⠈⢿⡄
⣸⠇⢠⣷⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⠿⠿⠋⠀⢻⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢾⣆⠈⣷
⡟⠀⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣶⣤⡀⢸⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡄⢹
⡇⠀⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠈⣿⣼⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠃⢸
⢡⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⠶⣶⡟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡼
⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡁⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣼⣀⣠⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                     v4.01
  Coded by 4d1ty4x
  github: https://github.com/thedvlprguy
\033[33;4mVersion:\033[0m 4            \033[33;4mCTRL+C:\033[0m exit          \033[33;4mAuthor:\033[0m 4d1ty4x

\e[37m[1]\e[36m Requirements & Update        \e[37m[2]\e[36m theHarvester			
\e[37m[3]\e[36m Recon-ng                     \e[37m[4]\e[36m SpiderFoot		
\e[37m[5]\e[36m OSINT Framework              \e[37m[6]\e[36m DNSdumpster		
\e[37m[7]\e[36m How to Use?                  \e[37m[8]\e[36m Uninstall downloaded tools	
\e[37m[9]\e[36m Shodan API                    \e[37m[10]\e[36m Maltego
\e[37m[11]\e[36m Google Dorking               \e[37m[12]\e[36m Social-Engineer Toolkit	
\e[37m[13]\e[36m Censys                       \e[37m[14]\e[36m IPinfo.io	
\e[37m[15]\e[36m Metagoofil                   \e[37m[16]\e[36m FOCA
\e[37m[17]\e[36m Blackhat Tools               \e[37m[18]\e[36m Auto OSINT

'

# Option Selection
read -p "Enter your transaction number: " option

if [[ $option == 1 || $option == 01 ]]; then
    clear
    echo -e "\033[47;31;5m Installing updates and requirements...\033[0m"
    sleep 3
    apt update && apt upgrade -y
    pkg install git python python3 pip pip3 curl -y
    clear
    echo -e "\033[47;3;35m Update complete...\033[0m"
    sleep 2
    bash 4xDraco.sh

elif [[ $option == 2 || $option == 02 ]]; then
    clear
    echo -e "\033[47;3;35m Installing theHarvester...\033[0m"
    sleep 2
    cd Tools
    git clone https://github.com/laramies/theHarvester.git
    cd theHarvester
    python3 theHarvester.py

elif [[ $option == 3 || $option == 03 ]]; then
    clear
    echo -e "\033[47;3;35m Installing Recon-ng...\033[0m"
    sleep 2
    cd Tools
    git clone https://github.com/lanmaster53/recon-ng.git
    cd recon-ng
    python3 recon-ng

elif [[ $option == 4 || $option == 04 ]]; then
    clear
    echo -e "\033[47;3;35m Installing SpiderFoot...\033[0m"
    sleep 2
    cd Tools
    git clone https://github.com/smicallef/spiderfoot.git
    cd spiderfoot
    python3 sf.py

elif [[ $option == 5 || $option == 05 ]]; then
    clear
    echo -e "\033[47;3;35m Installing OSINT Framework...\033[0m"
    sleep 2
    cd Tools
    git clone https://github.com/lockfale/osintframework.git
    cd osintframework
    python3 -m SimpleHTTPServer

elif [[ $option == 6 || $option == 06 ]]; then
    clear
    echo -e "\033[47;3;35m Installing DNSdumpster...\033[0m"
    sleep 2
    cd Tools
    git clone https://github.com/aretesec/dnsdumpster.git
    cd dnsdumpster
    python3 dnsdumpster.py

elif [[ $option == 7 || $option == 07 ]]; then
    clear
    echo "YouTube Video: https://www.youtube.com/watch?v=zgdq6ErscqY"
    python3 -m webbrowser https://www.youtube.com/watch?v=zgdq6ErscqY
    sleep 5
    echo "Wait for 5 seconds"
    bash 4xDraco.sh

elif [[ $option == 8 || $option == 08 ]]; then
    clear
    echo -e "\033[47;3;35m REMOVING DOWNLOADED TOOLS...\033[0m"
    sleep 2
    rm -rf Tools
    echo -e "\033[47;3;35m Tools removed successfully!\033[0m"
    sleep 1
    bash 4xDraco.sh

elif [[ $option == 9 || $option == 09 ]]; then
    clear
    echo -e "\033[47;3;35m Installing Shodan API...\033[0m"
    sleep 2
    cd Tools
    git clone https://github.com/achillean/shodan-python.git
    cd shodan-python
    python3 setup.py install

elif [[ $option == 10 || $option == 010 ]]; then
    clear
    echo -e "\033[47;3;35m Installing Maltego...\033[0m"
    sleep 2
    cd Tools
    git clone https://github.com/Paterva/MaltegoCE.git
    cd MaltegoCE
    ./install.sh

elif [[ $option == 11 || $option == 011 ]]; then
    clear
    echo -e "\033[47;3;35m Installing Google Dorking Tools...\033[0m"
    sleep 2
    cd Tools
    git clone https://github.com/digination/Google-Dorking.git
    cd Google-Dorking
    python3 google_dorking.py

elif [[ $option == 12 || $option == 012 ]]; then
    clear
    echo -e "\033[47;3;35m Installing Social-Engineer Toolkit...\033[0m"
    sleep 2
    cd Tools
    git clone https://github.com/trustedsec/social-engineer-toolkit.git
    cd social-engineer-toolkit
    python3 setup.py

elif [[ $option == 13 || $option == 013 ]]; then
    clear
    echo -e "\033[47;3;35m Installing Censys...\033[0m"
    sleep 2
    cd Tools
    git clone https://github.com/censys/censys-python.git
    cd censys-python
    python3 setup.py install

elif [[ $option == 14 || $option == 014 ]]; then
    clear
    echo -e "\033[47;3;35m Installing IPinfo.io...\033[0m"
    sleep 2
    cd Tools
    git clone https://github.com/ipinfo/python-ipinfo.git
    cd python-ipinfo
    python3 setup.py install

elif [[ $option == 15 || $option == 015 ]]; then
    clear
    echo -e "\033[47;3;35m Installing Metagoofil...\033[0m"
    sleep 2
    cd Tools
    git clone https://github.com/laramies/metagoofil.git
    cd metagoofil
    python3 metagoofil.py

elif [[ $option == 16 || $option == 016 ]]; then
    clear
    echo -e "\033[47;3;35m Installing FOCA...\033[0m"
    sleep 2
    cd Tools
    git clone https://github.com/ElevenPaths/FOCA.git
    cd FOCA
    ./FOCA

elif [[ $option == 17 || $option == 017 ]]; then
    clear
    echo -e "\033[47;3;35m Installing Blackhat OSINT Tools...\033[0m"
    sleep 2
    cd Tools
    git clone https://github.com/BlackhatOSINT/blackhat.git
    cd blackhat
    bash setup.sh

elif [[ $option == 18 || $option == 018 ]]; then
    clear
    echo -e "\033[47;3;35m Installing Auto OSINT...\033[0m"
    sleep 2
    cd Tools
    git clone https://github.com/completegenomics/auto-osint.git
    cd auto-osint
    python3 auto_osint.py

else
    echo -e "\033[31mInvalid option! Please try again.\033[0m"
    sleep 2
    bash 4xDraco.sh
fi

# Add cleanup for Ctrl+C
trap ctrl_c INT

function ctrl_c() {
    echo -e "\n\033[31m[*] Cleaning up and exiting...\033[0m"
    cd "$HOME"
    exit 1
}
