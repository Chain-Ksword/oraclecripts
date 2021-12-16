#!/bin/bash
sudo zip -rq \
	/home/ubuntu/oracleArmBak.zip\
	/etc/{nginx,v2ray}/\
	/home/ubuntu/.config/{macchina,qBittorrent,rclone,starship.toml}\
	/home/ubuntu/{.vim,.thelounge,.bashrc,.bash_aliases}\
	/opt/wallabag/\
	/home/ubuntu/.local/share/{qBittorrent,zoxide}/\
	/home/ubuntu/discord/Kurisu/config.json\
	/home/ubuntu/qbit-utils/
rclone copy /home/ubuntu/oracleArmBak.zip drive: -Pv
sudo sed -i "/LAST_BACKUP/c\\LAST_BACKUP='$(date -R)'" /etc/environment
