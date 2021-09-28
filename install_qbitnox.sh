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
echo ************************************************************
