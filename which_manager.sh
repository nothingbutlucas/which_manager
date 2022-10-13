#!/bin/bash

# This script is used to know what package manager is installed on the system

# Colours

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
purple='\033[0;35m'
cyan='\033[0;36m'
nc='\033[0m'

trap ctrl_c INT

function ctrl_c() {
    echo -e "\n${red}[!]${nc} Ctrl + C detected, exiting..."
    tput cnorm
    exit 0
}

function exit_script() {
    echo -e "\n${green}[!]${nc} Exiting...\n"
    tput cnorm
    exit 0
}

function banner() {
    echo -e "\n${red}┬ ┬┬ ┬┬┌─┐┬ ┬    ┌┬┐┌─┐┌┐┌┌─┐┌─┐┌─┐┬─┐"
    sleep 0.05
    echo -e "${nc}││${red}│${nc}├─┤││  ├─${red}┤    │${nc}││├─┤│${red}││${nc}├─┤${red}│${nc} ┬├┤ ├┬${red}┘${nc}"
    sleep 0.05
    echo -e "${nc}└┴┘┴ ┴┴└─┘${red}┴ ┴───${nc}─┴ ┴┴ ┴┘└┘┴ ┴└─┘└─┘┴└${red}─${nc}"
    sleep 0.05
}

# Main

tput civis

banner

managers=(apt-get apt yum dnf zypper pacman emerge urpmi flatpak snap snapd pkg)

for manager in "${managers[@]}"; do
    if command -v $manager &> /dev/null; then
        echo -e "\n${green}[+]${nc} ${manager} -> $(command -v $manager)"
        sleep 0.05
    fi
done

echo -e "\n${green}[+]${nc} Done!"

exit_script
