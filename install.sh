#!/usr/bin/env bash

S0="\033[0m"
SBLD="\033[1m"
CRED="\033[31m"
CGRN="\033[32m"
CYLW="\033[33m"
CCYN="\033[36m"

MSG="[${CYLW}M${S0}] ${CYLW}${SBLD}Fust Installer${S0}:"
MSG_SUC="[${CGRN}0${S0}] ${CYLW}${SBLD}Fust Installer${S0}:${CGRN}"
MSG_ERR="[${CRED}E${S0}] ${CYLW}${SBLD}Fust Installer${S0}:${CRED}"

echo -e "${CCYN}${SBLD}--- Fust Installer Script ---${S0}"

echo -e "${MSG} Installing dependencies..."
if command -v apt &> /dev/null; then
    sudo apt install python3 -y
elif command -v dnf &> /dev/null; then
    sudo dnf install python3
elif command -v yum &> /dev/null; then
    sudo yum install python
elif command -v zypper &> /dev/null; then
    sudo zypper in python
elif command -v pacman &> /dev/null; then
    sudo pacman -S --needed --noconfirm python
else
    echo "A package manager supported by the installer was not found. If you don't have 'python3' in your '/bin' directory, install it or create a symlink to '/bin/python' or '/usr/bin/python'."
fi

echo -e "${MSG} Installing Fust..."
echo -e "${MSG} Making 'fust' executable..."
if ! chmod +x fust; then
    echo -e "${MSG_ERR} 'chmod +x fust' has failed.${S0}"
    exit 1
else
    echo -e "${MSG} Copying into /bin/fust... ${CYLW}Root privileges needed.${S0}"
    if ! sudo cp ./fust /bin/fust; then
        echo -e "${MSG_ERR} 'sudo cp ./fust /bin/fust' has failed.${S0}"
        exit 1
    else
        echo -e "${MSG_SUC} Fust has been installed successfully!"
        fust -h
        exit 0
    fi
fi
