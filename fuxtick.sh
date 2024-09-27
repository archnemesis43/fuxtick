#!/bin/bash

ascii_art="\033[1;31m  __            _   _      _    
 / _|_   ___  _| |_(_) ___| | __
| |_| | | \ \/ / __| |/ __| |/ /
|  _| |_| |>  <| |_| | (__|   < 
|_|  \__,_/_/\_\\___|_|\___|_|\_\\
\033[0m 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~                               
"
echo -e "$ascii_art"
PURPLE='\033[1;34m'
YELLOW='\033[1;33m'
BROWN='\033[0;33m'
echo -e "${PURPLE}fuxtick v2. created by relaxedturtle\nhttps://github.com/relaxedturtle${NC}"
RED='\033[0;31m'
NC='\033[0m'
LIGHTGREEN='\033[1;32m'
echo -e "${RED}\nNOTE: THIS PROGRAM IS FOR EDUCATIONAL USE ONLY. USERS ARE FULLY RESPONSIBLE FOR ITS APPLICATION. THE CREATOR(S)\nOF FUXTICK ARE NOT LIABLE IN ANY WAY SHAPE OR FORM FOR ANY POTENTIAL MISUSE OR WRONGDOING.\n${NC}"
GREEN='\033[0;32m'
echo -e "${LIGHTGREEN}CHECK OUT ALL OF THE AUTHORS OF THESE REPOSITORIES ON GITHUB!\n${NC}"

repo_names=(
	"IP-Tracer (by rajkumardusad)"
	"Zphisher (by htr-tech)"
	"Facad1ng (by spyboy-productions)"
	"ipdrone (by noob-hackers)"
	"Beast_Bomber (by un1cum)"
	"termux-desktop (by adi1090x)"
	"Free-Proxy (by mishakorzik)"
)
repos=(
	"https://github.com/rajkumardusad/IP-Tracer"
	"https://github.com/htr-tech/zphisher"
	"https://github.com/spyboy-productions/Facad1ng"
	"https://github.com/noob-hackers/ipdrone"
	"https://github.com/un1cum/Beast_Bomber"
	"https://github.com/adi1090x/termux-desktop"
	"https://github.com/mishakorzik/Free-Proxy"
)
echo "Available Repositories:"
for i in "${!repo_names[@]}"; do
	echo "$((i+1)). ${repo_names[i]}"
done

read -p "Enter the number of the repository you want to clone:" choice

if [[ $choice -gt 0 && $choice -le ${#repos[@]} ]]; then
	git clone "${repos[$((choice - 1))]}"
else
	echo "Invalid Choice"
fi
