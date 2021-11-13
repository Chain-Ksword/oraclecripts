#!/bin/bash
sudo zip -rq \
	/home/ubuntu/oracleArmBak.zip\
	/etc/{nginx,v2ray}/\
	/home/ubuntu/.config/{macchina,qBittorrent,rclone,starship.toml}\
	/home/ubuntu/{.vim,.thelounge,.bashrc,.bash_aliases}\
	/opt/wallabag/\
	/home/ubuntu/.local/share/qBittorrent/\
	/home/ubuntu/discord/Kurisu/config.json
rclone copy oracleArmBak.zip drive: -Pv
