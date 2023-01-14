# server-config

by [B3PO](https://gitlab.com/B3PO)

Used to setup a front-end web server for basic html, css, js or Vue 3.

Used to setup a back-end web server with npm, nodejs and pm2.

Tools, references and files to assist with server configuration. Will be used for automation in the future with CI/CD.

## Getting started


```bash
git clone https://gitlab.com/B3PO/server-config
cd server-config/main
bash serve.sh
```

Follow prompts on screen to setup front/back-end application.

Note: If you have to install Vue/Node/NPM first, then select menu item #2 again but select "N" to configure nginx block.

The serve.sh file handles most of the steps outlined in the links below.

### Resources
+ [Configure Digitalocean Server Droplet](https://www.digitalocean.com/docs/droplets/how-to/create/)
+ [Manage Ubuntu Server Droplet](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-18-04)
+ [Install and Config Nginx on Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-16-04)
+ [Configure Server Blocks with Nginx](https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-server-blocks-virtual-hosts-on-ubuntu-16-04)
+ [Configure SSL with CertBot Nginx](https://www.digitalocean.com/community/tutorials/how-to-secure-nginx-with-let-s-encrypt-on-ubuntu-18-04)
+ [Configure Uncomplicated Firewall](https://www.vultr.com/docs/how-to-configure-ufw-firewall-on-ubuntu-14-04)
 
 
