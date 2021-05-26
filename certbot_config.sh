#!/bin/bash
echo "Have you installed certbot already? (Y)es or (N)o"
read answer
if [ "$answer" -eq "Y" ]    
then 
    sudo certbot --nginx
else
    sudo snap install core
    sudo snap refresh core
    sudo apt-get remove certbot
    sudo snap install --classic certbot
    sudo ln -s /snap/bin/certbot /usr/bin/certbot
    sudo certbot --nginx
fi