#!/bin/bash
cd /home/ttn/Desktop/Terra

terraform init
terraform plan
terraform apply -auto-approve

sudo systemctl status nginx

cd /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/servers /etc/nginx/sites-enabled
#xdg-open /var/www/html/index.html
curl localhost:82
