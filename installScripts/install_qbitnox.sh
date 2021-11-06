#!/bin/sh
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color
echo -e "************************************************************${GREEN}"
read -p "Press enter to continue with installing qbittorrent-nox"
PS3='Select if the cpu is arm64 or amd64'
select i in amd64 arm64
do
	case $i in
		amd64) 
			read -p "Press enter to install qbittorrent-nox-4.3.7-x86_64"
			mkdir -p ~/bin && source ~/.profile
			mv ./packages/x86_64-qbittorrent-nox-4.3.7 ~/bin/qbittorrent-nox
			chmod 700 ~/bin/qbittorrent-nox
			break;;
		arm64)
			read -p 'Press enter to install qbittorrent-nox-4.3.7-aarch64'
			mkdir -p ~/bin && source ~/.profile
			mv ./packages/aarch64-qbittorrent-nox-4.3.7 ~/bin/qbittorrent-nox
			chmod 700 ~/bin/qbittorrent-nox
			break;;
		*)
			echo -e "${RED}Inavlid option!${GREEN}"
	esac
done
echo -e "${RED}Add preferences to: \n~/.config/qBittorrent/\nand .torrent files, logs, etc to: \n~/.local/share/data/qBittorrent/${NC}"
echo -e "${RED}Make sure you have torrent data in the correct folders${NC}"
echo '************************************************************'
