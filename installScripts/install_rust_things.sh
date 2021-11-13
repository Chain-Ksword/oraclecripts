#!/bin/sh
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color
echo -e "************************************************************${GREEN}"
echo -e "Installs dust exa prcs bandwhich bat macchina and grex"
read -p "Press enter to continue with installing cargo and rust programs"
sudo apt update; sudo apt install cargo
cargo install du-dust exa procs bandwhich bat macchina grex
echo -e "${RED}Install cargo-update dependencies before attempting to install it!"
echo -e "${NC}************************************************************"
