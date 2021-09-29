echo '************************************************************'
read -p 'Press enter to continue with installing qbittorrent-nox'
PS3='Select if the cpu is arm64 or amd64'
select i in amd64 arm64
do
	case $i in
		amd64) 
			read -p 'Press enter to install qbittorrent-nox 4.3.7x86_64'
			mkdir -p ~/bin && source ~/.profile
			mv ./packages/x86_64-qbittorrent-nox-4.3.7 ~/bin/qbittorrent-nox
echo $ip
			chmod 700 ~/bin/qbittorrent-nox
			break;;
		arm64)
			read -p 'Press enter to install qbittorrent-nox 4.3.6arm64'
			sudo apt install ./packages/qbittorrent-nox_4.3.6.99~202107121021-7389-3ac8c97e6~ubuntu20.10.1_arm64.deb -y
			break;;
		*)
			echo 'Inavlid option!'
	esac
done
#read -p 'Press enter to stop qbittorrent-nox from updating'
#sudo apt-mark hold qbittorrent-nox
echo -e 'Add preferences to: ~/.config/qBittorrent/\nand .torrent files, logs, etc to: ~/.local/share/data/qBittorrent/'
echo 'Make sure you have torrent data in the correct folders'
echo '************************************************************'
