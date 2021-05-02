## FRONTEND
'''
# apt update
# apt install nginx-y
# systemctl enable nginx 
# systemctl start nginx 
# apt install npm
# cd /var/www/html
# git clone https://github.com/zelar-soft-todoapp/frontend.git
# cd frontend
# npm install
# npm run build

Update Login and todo Ip address.

# cd /var/www/html/frontend
# cd config
# vi index.js

Now change the root in /etc/nginx/sites-available/default   /var/www/html/frontend/dist

# systemctl restart nginx
'''