sudo fusermount -u /home/ubuntu/cloud
rclone mount cks_4: ~/cloud/ -vv --read-only --no-modtime --buffer-size 0 --vfs-read-chunk-size 16M --vfs-read-chunk-size-limit 0 --vfs-read-ahead 0 --drive-pacer-min-sleep 10ms
