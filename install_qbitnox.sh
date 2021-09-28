echo ************************************************************
read -p 'Press enter to continue with installing qbittorrent-nox'
PS3='Select if the cpu is arm64 or amd64'
select i in amd64 arm64
do
	case $i in
		amd64) 
			echo 'AMD64'
			break;;
		arm64)
			echo 'ARM64'
			break;;
		*)
			echo 'Inavlid option!'
	esac
done
echo ************************************************************
