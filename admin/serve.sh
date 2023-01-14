#!/bin/bash

# Define functions
function server_config {
    echo "######################################################################"
    echo "Hello 007"
    echo "Getting your Server Ready"
    echo "######################################################################"
    sudo apt-get update
    echo "Update Done ##########################################################"
    sudo apt-get upgrade 
    echo "Upgrade Done #########################################################"
    sudo apt-get install nginx
    echo "Nginx Installed ######################################################"
    sudo ufw enable
    echo "UFW Enabled ##########################################################"
    sudo ufw allow  'Nginx HTTP'
    echo "UFW HTTP Allowed #####################################################"
    sudo ufw allow  'Nginx HTTPS'
    echo "UFW HTTPS Allowed #####################################################"
    sudo ufw allow  'Nginx FULL'
    echo "UFW Nginx Full Allowed ################################################"
    sudo ufw allow 'OpenSSH'
    echo "UFW OpenSSH Allowed ##################################################"
    sudo systemctl status nginx
    echo "NGINX SystemCTL Passed ###############################################"
    nginx -t 
    echo "Check to see if Nginx Test Passed ####################################"
    echo "If everything looks good - sudo systemctl restart nginx ##############"
    menu
}

function front_config {
    echo "######################################################################"
    echo "######################################################################"
    read -p 'Do you need to setup Vue/Node/NPM? (Y)es or (N)o: ' answer
    if [ $answer == 'Y' ]; then
        echo "######################################################################"
        echo "Hello 007"
        echo "Getting Vue, Node & NPM Ready"
        echo "######################################################################"
        sudo apt-get install npm 
        npm install -g npm@latest
        echo "NPM Done #############################################################"
        curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
        sudo apt-get install -y nodejs
        echo "NodeJS Done ##########################################################"
        npm i -g vue@latest @vue/cli
        echo "Vue Done #############################################################"
        echo "######################################################################"
        echo "All done 007"
        echo "Time to develop your tools"
        echo "######################################################################"
    else
        echo "#######################################################################"
        echo "Hello 007"
        echo "Q is Configuring Nginx for You"
        echo "#######################################################################"
        echo -n "Enter your URL (ex. 'your_url.com' no 'https://') \"url\" "
        read user_url
        mkdir ~/../srv/www/
        mkdir ~/../srv/www/$user_url
        cp index.html ~/../srv/www/$user_url
        python3 server_block_config.py
        cp $user_url ~/../etc/nginx/sites-available/
        sudo chown -R $USER:$USER ~/../srv/www/$user_url
        sudo chmod -R 755 ~/../srv/www
        sudo ln -s ~/../etc/nginx/sites-available/$user_url ~/../etc/nginx/sites-enabled/
        nginx -t
        sudo systemctl restart nginx
    fi
    echo "######################################################################"
    echo "######################################################################"
    menu
}

function back_config {
    echo "######################################################################"
    echo "Hello 007"
    echo "Getting your Server Ready"
    echo "######################################################################"
    sudo apt-get update
    echo "Update Done ##########################################################"
    sudo apt-get upgrade 
    echo "Upgrade Done #########################################################"
    sudo apt-get install nginx
    echo "Nginx Installed ######################################################"
    sudo ufw enable
    echo "UFW Enabled ##########################################################"
    sudo ufw allow  'Nginx HTTP'
    echo "UFW HTTP Allowed #####################################################"
    sudo ufw allow  'Nginx HTTPS'
    echo "UFW HTTPS Allowed #####################################################"
    sudo ufw allow  'Nginx FULL'
    echo "UFW Nginx Full Allowed ################################################"
    sudo ufw allow 'OpenSSH'
    echo "UFW OpenSSH Allowed ##################################################"
    sudo systemctl status nginx
    echo "######################################################################"
    echo "NGINX SystemCTL Passed ###############################################"
    nginx -t 
    echo "Check to see if Nginx Test Passed ####################################"
    echo "If everything looks good - sudo systemctl restart nginx ##############"
    echo "######################################################################"
    echo "Hello 007"
    echo "Getting Node & NPM Ready"
    echo "######################################################################"
    sudo apt-get install npm 
    npm install -g npm@latest
    echo "NPM Done #############################################################"
    curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
    sudo apt-get install -y nodejs
    echo "NodeJS Done ##########################################################"
    npm install pm2 -g
    echo "PM2 Done #############################################################"
    echo "#######################################################################"
    echo "Hello 007"
    echo "Q is Configuring Nginx for You"
    echo "#######################################################################"
    echo -n "Enter your URL (ex. 'your_url.com' no 'https://') \"url\" "
    read user_url
    python3 backend_server_block_config.py
    cp $user_url ~/../etc/nginx/sites-available/
    sudo ln -s ~/../etc/nginx/sites-available/$user_url ~/../etc/nginx/sites-enabled/
    nginx -t
    sudo systemctl restart nginx
    cd ~/
    git clone https://gitlab.com/B3PO/node-express-mongo-template
    menu
}

function cert_config {
    echo "######################################################################"
    echo "######################################################################"
    read -p 'Have you installed certbot already? (Y)es or (N)o: ' answer
    if [ $answer == 'Y' ]; then
            certbot
    else
        sudo snap install core
        sudo snap refresh core
        sudo apt-get remove certbot
        sudo snap install --classic certbot
        sudo ln -s /snap/bin/certbot /usr/bin/certbot
        sudo certbot --nginx
    fi
    echo "######################################################################"
    echo "######################################################################"
    menu
}

# Define the menu
menu() {
  while true; do
    echo "######################################################################"
    echo "######################################################################"
    echo "Hello 007, what are we doing today?"
    echo "######################################################################"
    echo "1. Setup new server"
    echo "2. Setup front-end server"
    echo "3. Setup back-end server"
    echo "4. Setup certbot"
    echo "5. Quit"
    echo "######################################################################"
    echo "######################################################################"

    # Ask the user to choose an option
    read -p "Enter your choice: " choice

    # Use a case statement to handle the user's choice
    case $choice in
      1)
        # Code for option 1 goes here
        echo "1. Setup new server"
        server_config
        ;;
      2)
        # Code for option 2 goes here
        echo "2. Setup front-end server"
        front_config
        ;;
      3)
        # Code for option 3 goes here
        echo "3. Setup back-end server"
        back_config
        ;;
      4)
        # Code for quitting the program goes here
        echo "4. Setup certbot"
        cert_config
        ;;
      5)
        # Code for quitting the program goes here
        echo "Quitting, next time do it yourself 007"
        exit
        ;;
      *)
        # Handle invalid input
        echo "Invalid choice"
        ;;
    esac
  done
}

# Run the menu
menu


