server {
	listen 80;
	listen [::]:80;
	root /srv/www/your_url.com;

	index index.html index.htm index.nginx-debian.html;

	server_name your_url.com www.your_url.com;
	
	location / {
		try_files $uri $uri/ =404;
	} 
}
