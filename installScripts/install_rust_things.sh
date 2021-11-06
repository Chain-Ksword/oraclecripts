#!/bin/sh
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color
echo -e "************************************************************${GREEN}"
echo -e "Installs dust exa prcs bandwhich and bat"
read -p "Press enter to continue with installing cargo and rust programs"
sudo apt update; sudo apt install cargo bandwhich
cargo install dust exa procs bandwhich bat
echo -e "${NC}************************************************************"
