sudo fusermount -u /home/ubuntu/cloud
rclone mount cks_4: ~/cloud/ --vfs-cache-max-size 10G --vfs-cache-mode full --allow-other -vv --allow-non-empty
