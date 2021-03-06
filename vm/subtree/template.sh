#!/bin/bash

# Text color variables
txtred='\e[0;31m'       # red
txtgrn='\e[0;32m'       # green
txtylw='\e[0;33m'       # yellow
txtblu='\e[0;34m'       # blue
txtpur='\e[0;35m'       # purple
txtcyn='\e[0;36m'       # cyan
txtwht='\e[0;37m'       # white
bldred='\e[1;31m'       # red    - Bold
bldgrn='\e[1;32m'       # green
bldylw='\e[1;33m'       # yellow
bldblu='\e[1;34m'       # blue
bldpur='\e[1;35m'       # purple
bldcyn='\e[1;36m'       # cyan
bldwht='\e[1;37m'       # white
txtund=$(tput sgr 0 1)  # Underline
txtbld=$(tput bold)     # Bold
txtrst='\e[0m'          # Text reset

# Feedback indicators
function hr {
        echo
        printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
        echo
}
function info {
        echo -e "${bldblu}INFO: ${1}${txtrst}"
}
function success {
        echo -e "${bldgrn}SUCCESS ${1}${txtrst}"
        hr
}
function warning {
        echo -e "${bldylw}WARNING: ${1}${txtrst}"
}
function error {
        echo -e "${bldred}ERROR: ${1}${txtrst}"
}
function pause {
   read -p "Press [Enter] key to continue..."
}