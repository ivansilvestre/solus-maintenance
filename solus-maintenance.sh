#!/bin/bash

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NOCOLOR='\033[0m'


update () {
    echo
        echo -e "${BLUE} .................. Starting updates................. ${NOCOLOR}"
    echo
        sudo eopkg upgrade -y
    echo
        echo -e "${BLUE} ---------------------------------------------------- ${NOCOLOR}"
    echo
        sudo flatpak update
}

cleaning () { 
    echo    
        echo -e "${BLUE} ..................... Cleaning ..................... ${NOCOLOR}"
    echo
        sudo eopkg rmo -y
    echo
        echo -e "${BLUE} ..................... All Done ..................... ${NOCOLOR}" 
}

options (){
    if [[ $answer == 'r' ]]
        then
        reboot
    elif [[ $answer == 'p' ]]
        then
        poweroff  
    else
        echo -e "${BLUE} ---------------------------------------------------- ${NOCOLOR}"
        echo
    fi
}

update

cleaning

echo
echo -e "${GREEN}
    What do you want to do? 
    ${NOCOLOR}Reboot${GREEN}: press ${NOCOLOR}r${GREEN} and ${NOCOLOR}Enter${GREEN};
    ${NOCOLOR}Poweroff${GREEN}: press ${NOCOLOR}p${GREEN} and ${NOCOLOR}Enter${GREEN};
    ${NOCOLOR}Stay in command Line${GREEN}: press ${NOCOLOR}Enter${GREEN}; 
    ${NOCOLOR}"
    
read answer;

options