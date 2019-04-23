#!/bin/bash
bold=$(tput bold)
red=$(tput setaf 1)
yellow=$(tput setaf 3)
nocolor=$(tput sgr0)
bold_red=${bold}${red}
bold_yellow=${bold}${yellow}

if ! dpkg -s openssl &> /dev/null;then
 	echo "${yellow}[!]${nocolor} Openssl is required to run the program please install!" 
  	echo "${yellow}[!]${nocolor} Exiting."
	exit 

fi
	echo "${yellow}[1]${nocolor}To Encrypt file [enc]"
	echo "${yellow}[2]${nocolor}To Decrypt file [dec]"  
	read  -p ">> " userinput
    		case $userinput in
    			enc | ENC | 1) read  -p "${yellow}[!]${nocolor}Enter your filename to Encrypt : " encinput
				#file = $encinput 2> /dev/null
				/bin/bash files/encode.sh $encinput 2> /dev/null;;
				dec | DEC | 2 ) read  -p "${yellow}[!]${nocolor}Enter your filename to Decrypt : " decinput
				#file = $decinput 2> /dev/null
				/bin/bash files/decode.sh $decinput 2> /dev/null ;;
				*) echo "${bold_yellow}[*]${nocolor}input error"
				exit;;
			esac