#!/bin/bash

ascii_art="\e[1;91m  _____               __   __        __            \033[1;94m _____  
\e[1;91m_/ ____\\_ _____  ____/  |_|__| ____ |  | __ \033[1;94m___  __/  |  | 
\e[1;91m\\   __\\  |  \\  \\/  /\\   __\\  |/ ___\\|  |/ / \033[1;94m\\  \\/ /   |  |_
\e[1;91m |  | |  |  />    <  |  | |  \\  \\___|    <   \033[1;94m\\   /    ^   /
\e[1;91m |__| |____//__/\\_ \\ |__| |__|\\___  >__|_ \\   \033[1;94m\\_/\\____   | 
\e[1;91m                  \\/              \\/     \\/           \033[1;94m|__|  \033[0m
"
echo -e "\n$ascii_art"
PURPLE='\033[1;34m'
YELLOW='\033[1;33m'
BROWN='\033[0;33m'
RED='\033[0;31m'
NC='\033[0m'
LIGHTGREEN='\033[1;32m'
GREEN='\033[0;32m'
LIGHTRED='\e[1;91m'
BINGUS='\e[0;101m'
echo -e "${BINGUS}fuxtick v4. created by relaxedturtle https://github.com/relaxedturtle${NC}"
echo -e "${LIGHTRED}\nNOTE: THIS PROGRAM IS FOR EDUCATIONAL USE ONLY. USERS ARE FULLY RESPONSIBLE FOR ITS APPLICATION. THE CREATOR(S) OF FUXTICK ARE NOT LIABLE IN ANY WAY SHAPE OR FORM FOR ANY POTENTIAL MISUSE OR \nILLEGAL ACTIVITY.\n${NC}"
echo -e "${LIGHTGREEN}CHECK OUT ALL OF THE AUTHORS OF THESE REPOSITORIES ON GITHUB!\n${NC}"
repo_names=(
	"IP-Tracer (by rajkumardusad)"
	"Zphisher (by htr-tech)"
	"Facad1ng (by spyboy-productions)"
	"maskphish (by jaykali)"
	"ipdrone (by noob-hackers)"
	"infect (by noob-hackers)"
	"termux-desktop (by adi1090x)"
	"Free-Proxy (by mishakorzik)"
	"Cupp (by Mebus)"
	"Seeker (by thewhiteh4t)"
	"SocialBox (by samsesh)"
	"SocialBox-Termux (by samsesh)"
	"Aircrack-ng (by Aircrack-ng) [ROOT]"
	"Setoolkit (by trustedsec) [ROOT]"
	"Wifite (by derv82) [ROOT]"
)
repos=(
	"https://github.com/rajkumardusad/IP-Tracer"
	"https://github.com/htr-tech/zphisher"
	"https://github.com/spyboy-productions/Facad1ng"
	"https://github.com/jaykali/maskphish"
	"https://github.com/noob-hackers/ipdrone"
	"https://github.com/noob-hackers/infect"
	"https://github.com/adi1090x/termux-desktop"
	"https://github.com/mishakorzik/Free-Proxy"
	"https://github.com/Mebus/cupp"
	"https://github.com/thewhiteh4t/seeker"
	"https://github.com/samsesh/SocialBox"
	"https://github.com/samsesh/SocialBox-Termux"
	"https://github.com/aircrack-ng/aircrack-ng"
	"https://github.com/trustedsec/social-engineer-toolkit"
	"https://github.com/derv82/wifite"
)
echo "Available Repositories:"
for i in "${!repo_names[@]}"; do
	echo "$((i+1)). ${repo_names[i]}"
done

read -p "Enter the number of the repository you want to clone:" choice

if [[ $choice -gt 0 && $choice -le ${#repos[@]} ]]; then
	git clone "${repos[$((choice - 1))]}"
else
	echo "INVALID CHOICE"
fi
