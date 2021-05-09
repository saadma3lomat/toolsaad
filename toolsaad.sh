#!/bin/bash

######################
####     main    #####
######################

#add some colours
Black='\e[0;30m'
Red='\e[0;31m'
Green='\e[0;32m'
Yellow='\e[0;33m'
Blue='\e[0;34m'
Purple='\e[0;35m'
Cyan='\e[0;36m'
Whitee='\e[0;37m'
BBlack='\e[1;30m'
BRed='\e[1;31m'
BGreen='\033[1;32m'
BYellow='\033[1;33m'
BBlue='\033[1;34m'
BPurple='\033[1;35m'
BCyan='\033[1;36m'
BWhite='\033[1;37m'
resetx='\033[0m'
sd='\e[5m\e[7m'

if [ "$" == "help" ] || [ "$0" == "./toolsaad.sh" ]|| [ "$1" == "--help" ] || [ "$1" == "-h" ] 
then {
    echo -e "${Red}E:${BGreen} Could not open script    ${Green}are you root?"
    echo -e "${Red}W:${BGreen} Problem Permission deniedn !  use sudo for more Permission ${BWhite}"
    echo
    echo "example Usage:"
    echo 
    echo -e "                 ${sd}sudo bash toolsaad.sh${Red}\n\n" 
    echo 'Launch the script as root'
}
    exit 0

else
function echo_banner () {
    clear
    printf "\n${Whitee}@@@@${BBlack}@@@@${Whitee}@@@@${BBlack}@@@@${Whitee}@@@@${BBlack}@@@@${Whitee}@@@@${BBlack}@@@@${Whitee}@@@@${BBlack}@@@@${Whitee}@@${BBlack}@@@@${Whitee}@@@@${BBlack}@@@@${Whitee}@@@@${BBlack}@@@@${Whitee}@@@@${BBlack}@@@@${Whitee}@@@@\n"
    printf "${BBlack}@@@@                                                                  @@@@\n"
    printf "${Whitee}@@@@  ${BCyan}█████████${Cyan}╗          ${Blue}db                 ${BBlue}db          ${Cyan}|888888NJ    ${Whitee}@@@@\n"
    printf "${BBlack}@@@@  ${BCyan}██${Cyan}╔══════╝         ${Blue}d88b               ${BBlue}d88b         ${Cyan}|${BCyan}S${Cyan}|''''''NJ  ${BBlack}@@@@\n"
    printf "${Whitee}@@@@  ${BCyan}██${Cyan}║               ${Blue}d8''8b             ${BBlue}d8''8b        ${Cyan}|${BCyan}A${Cyan}|'     'NJ ${Whitee}@@@@\n"
    printf "${BBlack}@@@@  ${BCyan}█████████${Cyan}╗       ${Blue}d8'  '8b           ${BBlue}d8'  '8b       ${Cyan}|${BCyan}A${Cyan}|'     'NJ ${BBlack}@@@@\n"
    printf "${Whitee}@@@@  ${Cyan}╚══════${BCyan}██${Cyan}║      ${Blue}d8YaaaaY8b'        ${BBlue}d88YaaaY8b      ${Cyan}|${BCyan}D${Cyan}|'     'NJ ${Whitee}@@@@\n"
    printf "${BBlack}@@@@         ${BCyan}██${Cyan}║     ${Blue}d8''''''''8b       ${BBlue}d8''''''''8b     ${Cyan}|${BCyan}N${Cyan}|'     'NJ ${BBlack}@@@@\n"
    printf "${Whitee}@@@@  ${BCyan}█████████${Cyan}║    ${Blue}d8'        '8b     ${BBlue}d8'        '8b    ${Cyan}|${BCyan}J${Cyan}|......NJ  ${Whitee}@@@@\n"
    printf "${BBlack}@@@@  ${Cyan}╚════════╝   ${Blue}d8'          '8b   ${BBlue}d8'          '8b   ${Cyan}|8888888NJ   ${BBlack}@@@@\n"
    printf "${Whitee}@@@@                                                                  @@@@\n"
    printf "${BBlack}@@@@${Whitee}@@@@${BBlack}@@@@${Whitee}@@@@${BBlack}@@@@${Whitee}@@@@${BBlack}@@@@${Whitee}@@@@ ${sd}Saad NJ${Whitee} @@@@${BBlack}@@@@${Whitee}@@@@@${BBlack}@@@@${Whitee}@@@@${BBlack}@@@@${Whitee}@@@@${BBlack}@@@@\n"
}
echo_banner 
echo -e "${BYellow}Youtube :  ${sd}Saad NJ\n\n\n${BCyan}[!] use script Automatic${Cyan}        [1]${Whitee}     [!] install  airgiddon      [4]\\n\n${BGreen}[!] update and full upgrade     [2]     ${BWhite}[!] install tools-error     [5]\n\n${Green}[!] Modification source-list    [3]     ${Red}[!] exit                    [0]\n\n${Blue}use  ${Yellow}sudo bash toolsaad.sh  ${Blue}for Permission${BYellow}  :)\n"
fi
printf "${BBlue}[!] Choose a number : "
read ask
if [[ $ask == 0 ]]
then {
    echo "$ask = exit script :(" ; sleep 2 
    echo -e "${BYellow}Youtube :  ${sd}Saad NJ${Whitee}" 
}
    kill -9 $$
    
elif [[ $ask == 2 ]]
then
    echo -e "\n$ask = update and full upgrade\n" ; sleep 2
    echo -e "Updating      +++++++++++\n\n"
    apt-get update 
    echo -e "${BYellow}update end :)"
    apt-get upgrade -y
    echo -e "${Yellow}upgrade end :)"
    apt-get dist-upgrade -y
    echo -e "${BPurple}dist-upgrade end :)"
    apt-get full-upgrade -y
    echo -e "${Purple}full-upgrade end :)"
    apt-get clean ; sleep 2
    bash toolsaad.sh
elif [[ $ask == 3 ]]
then
    echo "$ask = Update Source-List"
    echo -e "$this is your source-list\n"
    cat /etc/apt/sources.list ; sleep 2
    echo -e "\n${BPurple}Now Updating Sources-List\n"; sleep 2
    echo "# See https://www.kali.org/docs/general-use/kali-linux-sources-list-repositories/" | tee /etc/apt/sources.list
    echo -e "deb http://http.kali.org/kali kali-rolling main contrib non-free\n\n# Additional line for source packages\ndeb-src http://http.kali.org/kali kali-rolling main contrib non-free\ndeb http://http.kali.org/kali kali-last-snapshot main non-free contrib\n\n\n#deb http://http.kali.org/kali kali-experimental main non-free contrib\n#deb http://http.kali.org/kali kali-rolling main non-free contrib" | tee -a /etc/apt/sources.list
    echo -e "\nYour source-list updating  :)\n"
    cat /etc/apt/sources.list ; sleep 3
    bash toolsaad.sh
elif [[ $ask == 4 ]]
then
    echo "$ask = install  airgiddon"
    apt install git -y
    echo -e "${Purple}git installing  :)"
    git clone https://github.com/v1s1t0r1sh3r3/airgeddon.git
    cd airgeddon/
    chmod a+x airgeddon.sh
    ./airgeddon.sh
elif [[ $ask == 5 ]]
then
function install_tools () {
    echo "\ninstall tools\n"
    apt install xterm -y
    echo -e "${Purple}xterm installed  :)"
    apt install dnsmasq -y
    echo -e "${Red}dnsmasq installed  :)"
    apt install bettercap -y
    echo -e "${Green}bettercap installed  :)"
    apt install hostapd-wpe -y
    echo -e "${Yellow}hostapd-wpe installed  :)"
    apt install udhcpd -y
    echo -e "${Blue}udhcpd installed  :)"
    apt install isc-dhcp-server -y
    echo -e "${Cyan}isc-dhcp-server installed  :)"
    apt install hostapd -y
    echo -e "${BRed}hostapd installed  :)"
    apt install mdk4 -y
    echo -e "${BGreen}mdk4 installed  :)"
    apt install hcxdumptool -y
    echo -e "${BYellow}hcxdumptool installed  :)"
    apt install hcxtools -y
    echo -e "${BBlue}hcxtools installed  :)"
    apt install beef -y
    echo -e "${BPurple}beef installed  :)"
    apt install beef-xss -y
    echo -e "${BCyan}beef-xss installed  :)"
    apt install lighttpd -y
    #apt install dhcp-server -y
    #apt install hcxpcaptool -y
    #apt install beef-project -y
}
install_tools
bash toolsaad.sh
elif [[ $ask == 1 ]]
then
    echo "$ask = update and full upgrade and update source-list and install airgiddon and tools\n" 
    echo "# See https://www.kali.org/docs/general-use/kali-linux-sources-list-repositories/" | sudo tee /etc/apt/sources.list
    echo -e "deb http://http.kali.org/kali kali-rolling main contrib non-free\n\n# Additional line for source packages\ndeb-src http://http.kali.org/kali kali-rolling main contrib non-free\ndeb http://http.kali.org/kali kali-last-snapshot main non-free contrib\n\n\n#deb http://http.kali.org/kali kali-experimental main non-free contrib\n#deb http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee -a /etc/apt/sources.list
    echo -e "${Purple}source-list"
    echo 'updating +++++++++++'
    apt-get update
    apt list --upgradable
    apt-get upgrade -y 
    apt-get dist-upgrade -y
    apt-get full-upgrade -y
    apt-get clean
    echo -e "${Cyan}update and full upgrade Listing... Done"
    apt install xterm -y
    apt install dnsmasq -y
    apt install udhcpd -y
    echo -e "${Red}xterm and dnsmasq and udhcpd installed  :)"
    apt install bettercap -y
    apt install hostapd-wpe -y
    apt install isc-dhcp-server -y
    echo -e "${Green}bettercap and hostapd-wpe and isc-dhcp-server installed  :)"
    apt install hostapd -y
    apt install mdk4 -y
    apt install hcxdumptool -y
    apt install hcxtools -y
    echo -e "${BGreen}hostapd and mdk4 and hcxdumptool and hcxtools installed  :)"
    apt install beef -y
    apt install beef-xss -y
    apt install lighttpd -y
    echo -e "${Green}beef and beef-xss and lighttpd installed  :)"
    git clone https://github.com/v1s1t0r1sh3r3/airgeddon.git
    cd airgeddon/
    chmod a+x airgeddon.sh
    ./airgeddon.sh
else
    echo -e "${Red}$ask:${BRed} command not found!"
    echo -e "${Red}E: ${BRed}Unable to lock script\n" 
    echo -e "${Green}use      ${Yellow}sudo bash toolsaad.sh          ${Green}for Permission${BYellow}  :)" ;sleep 2
    echo -e "${Red}E:  ${BRed}Invalid operation : $ask" ; sleep 2
bash toolsaad.sh
fi

