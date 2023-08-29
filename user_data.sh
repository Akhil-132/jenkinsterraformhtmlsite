#!/bin/bash
sudo apt-get update
sudo apt-get install -y nginx wget
sudo systemctl start nginx
wget https://www.tooplate.com/zip-templates/2137_barista_cafe.zip
unzip -o 2137_barista_cafe.zip
rm -rf /var/www/html/ *
cp -r 2137_barista_cafe/* /var/www/html/
systemctl restart nginx
