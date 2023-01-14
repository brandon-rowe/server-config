server {
	listen 80;
	listen [::]:80;
	root /srv/www/your_url.com;

	index index.html index.htm index.nginx-debian.html;

	server_name your_url.com www.your_url.com;
	
	location / {
		proxy_pass http://localhost:3000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
	} 
}
