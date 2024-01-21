################################################################################
# Copyright: brown.liuzan@outlook.com
# Version: 1.0
# Date: 20181122
# Description:
#     This script services as a bash module. It provides colorful text printing facility.
# Note:
#     This is intended to be include by other bash scripts.
################################################################################

if [[ ${LIUZAN_PRINTER_SH} != "LIUZAN_PRINTER_SH_DEFINED" ]]; then
readonly LIUZAN_PRINTER_SH="LIUZAN_PRINTER_SH_DEFINED"

# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

# Underline
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White

# BlinKing
KBlack='\033[5;30m'       # Black
KRed='\033[5;31m'         # Red
KGreen='\033[5;32m'       # Green
KYellow='\033[5;33m'      # Yellow
KBlue='\033[5;34m'        # Blue
KPurple='\033[5;35m'      # Purple
KCyan='\033[5;36m'        # Cyan
KWhite='\033[5;37m'       # White

# High Intensity
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White

# Bold High Intensity
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White

# Background
On_Black='\033[40m'       # Black
On_Red='\033[41m'         # Red
On_Green='\033[42m'       # Green
On_Yellow='\033[43m'      # Yellow
On_Blue='\033[44m'        # Blue
On_Purple='\033[45m'      # Purple
On_Cyan='\033[46m'        # Cyan
On_White='\033[47m'       # White

# High Intensity backgrounds
On_IBlack='\033[0;100m'   # Black
On_IRed='\033[0;101m'     # Red
On_IGreen='\033[0;102m'   # Green
On_IYellow='\033[0;103m'  # Yellow
On_IBlue='\033[0;104m'    # Blue
On_IPurple='\033[0;105m'  # Purple
On_ICyan='\033[0;106m'    # Cyan
On_IWhite='\033[0;107m'   # White

# Output regular colorful message.
function print_black() {
    echo -e "${Black}$@${Color_Off}"
}

function print_black_t() {
    echo -e "${Black}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

function print_red() {
    echo -e "${Red}$@${Color_Off}"
}

function print_red_t() {
    echo -e "${Red}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

function print_green() {
    echo -e "${Green}$@${Color_Off}"
}

function print_green_t() {
    echo -e "${Green}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

function print_yellow() {
    echo -e "${Yellow}$@${Color_Off}"
}

function print_yellow_t() {
    echo -e "${Yellow}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

function print_blue() {
    echo -e "${Blue}$@${Color_Off}"
}

function print_blue_t() {
    echo -e "${Blue}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

function print_purple() {
    echo -e "${Purple}$@${Color_Off}"
}

function print_purple_t() {
    echo -e "${Purple}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

function print_cyan() {
    echo -e "${Cyan}$@${Color_Off}"
}

function print_cyan_t() {
    echo -e "${Cyan}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

function print_white() {
    echo -e "${White}$@${Color_Off}"
}

function print_white_t() {
    echo -e "${White}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

# Output bold colorful message.
function print_bold_black() {
    echo -e "${BBlack}$@${Color_Off}"
}

function print_bold_black_t() {
    echo -e "${BBlack}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

function print_bold_red() {
    echo -e "${BRed}$@${Color_Off}"
}

function print_bold_red_t() {
    echo -e "${BRed}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

function print_bold_green() {
    echo -e "${BGreen}$@${Color_Off}"
}

function print_bold_green_t() {
    echo -e "${BGreen}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

function print_bold_yellow() {
    echo -e "${BYellow}$@${Color_Off}"
}

function print_bold_yellow_t() {
    echo -e "${BYellow}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

function print_bold_blue() {
    echo -e "${BBlue}$@${Color_Off}"
}

function print_bold_blue_t() {
    echo -e "${BBlue}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

function print_bold_purple() {
    echo -e "${BPurple}$@${Color_Off}"
}

function print_bold_purple_t() {
    echo -e "${BPurple}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

function print_bold_cyan() {
    echo -e "${BCyan}$@${Color_Off}"
}

function print_bold_cyan_t() {
    echo -e "${BCyan}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

function print_bold_white() {
    echo -e "${BWhite}$@${Color_Off}"
}

function print_bold_white_t() {
    echo -e "${BWhite}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

# Output blinking colorful message.
function print_blinking_black() {
    echo -e "${KBlack}$@${Color_Off}"
}

function print_blinking_black_t() {
    echo -e "${KBlack}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

function print_blinking_red() {
    echo -e "${KRed}$@${Color_Off}"
}

function print_blinking_red_t() {
    echo -e "${KRed}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

function print_blinking_green() {
    echo -e "${KGreen}$@${Color_Off}"
}

function print_blinking_green_t() {
    echo -e "${KGreen}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

function print_blinking_yellow() {
    echo -e "${KYellow}$@${Color_Off}"
}

function print_blinking_yellow_t() {
    echo -e "${KYellow}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

function print_blinking_blue() {
    echo -e "${KBlue}$@${Color_Off}"
}

function print_blinking_blue_t() {
    echo -e "${KBlue}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

function print_blinking_purple() {
    echo -e "${KPurple}$@${Color_Off}"
}

function print_blinking_purple_t() {
    echo -e "${KPurple}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

function print_blinking_cyan() {
    echo -e "${KCyan}$@${Color_Off}"
}

function print_blinking_cyan_t() {
    echo -e "${KCyan}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

function print_blinking_white() {
    echo -e "${KWhite}$@${Color_Off}"
}

function print_blinking_white_t() {
    echo -e "${KWhite}[$(date +%Y-%m-%d\ %H:%M:%S)]$@${Color_Off}"
}

fi  # LIUZAN_PRINTER_SH
