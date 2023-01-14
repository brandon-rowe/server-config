# Server_Config
Digitalocean, Ubuntu, Nginx

by [brandon-rowe](https://github.com/brandon-rowe)

## Configure Server

This was originally meant to help students learn to setup their own servers for testing and deployment.

I have updated the repo to include a single script that will setup your front-end or back-end for a MEVN project. (You still have to configure MongoDB on your own to connect)

If you are not learning and want an easy way to configure your server, go the the admin folder and run serve.sh.

Note: Back-end installs node version 12 that can be easily updated.

### Step 1

* Check "Learning Materials" below under "Digitalocean and Nginx"
* Follow the link and guide to setup your test Digitalocean server droplet.
* For testing, select the cheapest option, password, IPv6 and create.
* Under Resources Tab, Locate the Droplet Name under Droplets.
* Look for the three dots next to the droplet name and IP address.
* Click on the three dots and select "Access Console"

#### You are now in the server terminal.

Login

username: root

password: your_droplet_password

### Step 2
Install Git

```bash
sudo apt-get install git
```

### Step 3
#### Download Repository, Change Directory to Repository
```bash
git clone https://github.com/brandon-rowe/server-config
cd server-config/student
```

## Step 4
#### Run Bash Script to Configure Server and Download Nginx
```bash
bash server_config.sh
```

## Step 5
#### Run Bash Script to Configure Nginx Server Blocks
```bash
bash nginx_config.sh
```

Enter your URL twice and run for each server block you wish to configure.

## Step 6
#### If all tests pass, restart nginx and configure ipv4 records to connect site
```bash
sudo systemctl restart nginx
```

### Learning Materials
Articles with content that explains various approaches used to build this starter project.

The server-config folder handles most of the steps outlined in the links below.

### Digitalocean and Nginx
+ [Configure Digitalocean Server Droplet](https://www.digitalocean.com/docs/droplets/how-to/create/)
+ [Manage Ubuntu Server Droplet](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-18-04)
+ [Install and Config Nginx on Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-16-04)
+ [Configure Server Blocks with Nginx](https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-server-blocks-virtual-hosts-on-ubuntu-16-04)
+ [Configure Nginx to run PHP](https://websiteforstudents.com/setup-nginx-web-servers-with-php-support-on-ubuntu-servers/)
+ [Configure SSL with CertBot Nginx](https://www.digitalocean.com/community/tutorials/how-to-secure-nginx-with-let-s-encrypt-on-ubuntu-18-04)
+ [Configure Uncomplicated Firewall](https://www.vultr.com/docs/how-to-configure-ufw-firewall-on-ubuntu-14-04)
 
 
