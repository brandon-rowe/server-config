#!/bin/bash
echo "#######################################################################"
echo "Hello 007"
echo "Q is Configuring Nginx for You"
echo "#######################################################################"
echo -n "Enter your URL (ex. 'your_url.com' no 'https://') \"url\" "
read user_url
mkdir ~/../srv/www/
mkdir ~/../srv/www/$user_url
cp index.html ~/../srv/www/$user_url
#touch ~/../srv/www/$user_url/index.html #(User Configures HTML)
#mv my_domain.com $user_url
python3 server_block_config.py
cp $user_url ~/../etc/nginx/sites-available/
sudo chown -R $USER:$USER ~/../srv/www/$user_url
sudo chmod -R 755 ~/../srv/www
sudo ln -s ~/../etc/nginx/sites-available/$user_url ~/../etc/nginx/sites-enabled/
nginx -t
sudo systemctl restart nginx



