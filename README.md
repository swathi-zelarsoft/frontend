## FRONTEND
```
# apt update
# apt install nginx-y
# systemctl enable nginx
# systemctl start nginx
# apt install npm
# cd /var/www/html

Download and build Frontend component

# git clone https://github.com/zelar-soft-todoapp/frontend.git
# cd frontend
# npm install
# npm install --save-dev node-sass
# npm run build

Update Login and todo Ip address.

# rm -rf /var/www/html/index.debian.html /etc/nginx/sites-enabled/default /etc/nginx/sites-available/default
# mv todo.conf /etc/nginx/sites-enabled//roboshop.conf
# mv systemd.service /etc/systemd/system/frontend.service
# systemctl restart nginx
Now start Frontend service
# systemctl daemon-reload
# systemctl start frontend.service

```

