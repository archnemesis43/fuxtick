#!/bin/bash

ascii_art="  __            _   _      _    
 / _|_   ___  _| |_(_) ___| | __
| |_| | | \ \/ / __| |/ __| |/ /
|  _| |_| |>  <| |_| | (__|   < 
|_|  \__,_/_/\_\\___|_|\___|_|\_\\
                                
"
echo -e "$ascii_art"
RED='\033[0;31m'
NC='\033[0m'
echo -e "${RED}\nNOTE: THIS PROGRAM IS FOR EDUCATIONAL USE ONLY. USERS ARE ENTIRELY RESPONSIBLE FOR HOW THEY UTILIZE THIS\nPROGRAM. THE CREATOR(S) OF FUXTICK ARE NOT LIABLE IN ANY WAY SHAPE OR FORM FOR ANY\nPOTENTIAL MISUSE OR WRONGDOING\n${NC}"
repo_names=(
	"IP-Tracer (by rajkumardusad)"
	"Zphisher (by htr-tech)"
	"Facad1ng (by spyboy-productions)"
)
repos=(
	"https://github.com/rajkumardusad/IP-Tracer"
	"https://github.com/htr-tech/zphisher"
	"https://github.com/spyboy-productions/Facad1ng"
)
echo "Available Repositories:"
for i in "${!repo_names[@]}"; do
	echo "$((i+1)). ${repo_names[i]}"
done

read -p "Enter the number of the repository you want to clone:" choice

if [[ $choice -gt 0 && $choice -le ${#repos[@]} ]]; then
	git clone "${repos[$((choice - 1))]}"
else
	echo "Invalid Choice, Dumbass"
fi
