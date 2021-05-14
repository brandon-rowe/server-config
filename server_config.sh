#!/bin/bash
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
sudo ufw allow 'OpenSSH'
echo "UFW OpenSSH Allowed ##################################################"
sudo systemctl status nginx
echo "NGINX SystemCTL Passed ###############################################"
nginx -t 
echo "Check to see if Nginx Test Passed ####################################"
