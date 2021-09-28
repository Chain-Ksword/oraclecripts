echo ************************************************************
read -p 'Press enter to continue with installing qbittorrent-nox'
PS3='Select if the cpu is arm64 or amd64'
select i in amd64 arm64
do
	case $i in
		amd64) 
			read -p 'Press enter to install qbittorrent-nox 4.1.7amd64'
			sudo apt install ./packages/qbittorrent-nox_4.1.7-1ubuntu3_amd64.deb -y
			break;;
		arm64)
			read -p 'Press enter to install qbittorrent-nox 4.1.7arm64'
			sudo apt install ./packages/qbittorrent-nox_4.1.7-1ubuntu3_arm64.deb -y
			break;;
		*)
			echo 'Inavlid option!'
	esac
done
read -p 'Press enter to stop qbittorrent-nox from updating'
sudo apt-mark hold qbittorrent-nox
echo -e 'Add preferences to: ~/.config/qBittorrent/\nand .torrent files, logs, etc to: ~/.local/share/data/qBittorrent/'
echo 'Make sure you have torrent data in the correct folders'
echo ************************************************************
