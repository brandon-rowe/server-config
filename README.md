# Server_Config
Digitalocean, Ubuntu, Nginx

by [brandon-rowe](https://github.com/brandon-rowe)

## Configure Server

### Step 1
Check "Learning Materials" below under "Digitalocean and Nginx"
Follow the link and guide to setup your test Digitalocean server droplet.
For testing, select the cheapest option, password, IPv6 and create.
Under Resources Tab, Locate the Droplet Name under Droplets.
Look for the three dots next to the droplet name and IP address.
Click on the three dots and select "Access Console"

You are now in the server terminal.
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
cd server-config
```

## Step 4
#### Run Bash Script to Configure Server and Download Nginx
```bash
bash server_config.sh
```

### Make It Your Own
When using this starter project to build your own app you might consider some of the following steps:
  
  * use `search and replace` functionality of your favourite IDE to replace `anms` with `<your-app-prefix>`
  * rename project in `package.json` `name` property and set appropriate version (eg `0.0.0` or `1.0.0`)
  * rename app in `src/environments/` files (will be shown in browser tab)
  * delete pre-existing `CHANGELOG.md` (you will generate your own with future releases of your features)
  * delete `CODE_OF_CONDUCT.md`, `CONTRIBUTING.md` and `BUILT_WITH.md` files as they are relevant only if project is open sourced on Github
  * remove or adjust links in the [footer](https://github.com/tomastrajan/angular-ngrx-material-starter/blob/master/src/app/app.component.html#L79)
  * replace logo in `src/assets` folder ( currently 128 x 128 pixel `png` file )
  * adjust colors in `src/themes/default-theme.scss`
  * create a pull request in the [original repository](https://github.com/tomastrajan/angular-ngrx-material-starter/) to update `BUILT_WITH.md` [file](https://github.com/tomastrajan/angular-ngrx-material-starter/blob/master/BUILT_WITH.md) with a link and short description of your project

### Learning Materials
Articles with content that explains various approaches used to build this starter project.

### Digitalocean and Nginx
+ [Configure Digitalocean Server Droplet](https://www.digitalocean.com/docs/droplets/how-to/create/)
+ [Manage Ubuntu Server Droplet](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-18-04)
+ [Install and Config Nginx on Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-16-04)
+ [Configure Server Blocks with Nginx](https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-server-blocks-virtual-hosts-on-ubuntu-16-04)
+ [Configure Nginx to run PHP](https://websiteforstudents.com/setup-nginx-web-servers-with-php-support-on-ubuntu-servers/)
+ [Configure SSL with CertBot Nginx](https://www.digitalocean.com/community/tutorials/how-to-secure-nginx-with-let-s-encrypt-on-ubuntu-18-04)
+ [Configure Uncomplicated Firewall](https://www.vultr.com/docs/how-to-configure-ufw-firewall-on-ubuntu-14-04)
 
 