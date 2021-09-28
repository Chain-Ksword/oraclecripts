ip=$(dig TXT +short o-o.myaddr.l.google.com @ns1.google.com | grep -o "[^\"]\+")
read -p 'Press enter to proceed with installing nginx. Press Ctrl + C to quit'
sudo apt update
#sudo apt install curl gnupg2 ca-certificates lsb-release ubuntu-keyring -y
#curl https://nginx.org/keys/nginx_signing.key | gpg --dearmor \
#    | sudo tee /usr/share/keyrings/nginx-archive-keyring.gpg >/dev/null
#gpg --dry-run --quiet --import --import-options import-show /usr/share/keyrings/nginx-archive-keyring.gpg
#echo "deb [signed-by=/usr/share/keyrings/nginx-archive-keyring.gpg] \
#http://nginx.org/packages/ubuntu `lsb_release -cs` nginx" \
#    | sudo tee /etc/apt/sources.list.d/nginx.list
#echo -e "Package: *\nPin: origin nginx.org\nPin: release o=nginx\nPin-Priority: 900\n" \
#    | sudo tee /etc/apt/preferences.d/99nginx
#sudo apt update
#sudo apt install nginx -y
echo "Make ur domain point towards this $ip"
