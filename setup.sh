#!/bin/bash

## Installing NGINX
sudo apt-get install nginx

# Setup NGNIX for auto-start on boot
sudo update-rc.d nginx defaults

# Create hosting folders
sudo mkdir -p /var/www/blog/html

# Transfer permissions to create content.
sudo chown -R $USER:$USER /var/www/blog/html
sudo chmod -R 755 /var/www

# Copy default configuration for server blocks
sudo cp /etc/nginx/sites-available/default /etc/nginx/sites-available/blog

# Edit configuration file.
sudo vim /etc/nginx/sites-available/blog

# Create symlinks ... or not.
# sudo ln -s /etc/nginx/sites-available/blog /etc/nginx/sites-enabled/
# rm -Rf /etc/nginx/sites-enabled/sites-available

# Edit file.
sudo vim /etc/nginx/nginx.conf

# Restart server.
sudo service nginx restart

## Install Node
sudo apt-get update
sudo apt-get install nodejs
sudo apt-get install npm

## Install Ghost
# Dependencies
sudo apt-get install unzip
sudo apt-get install tree

# Download
wget https://ghost.org/zip/ghost-0.6.3.zip
unzip ghost-0.6.3.zip
rm ghost-0.6.3.zip

# Install
sudo npm install -g nodemon
sudo npm install -g pm2
sudo npm install --production
#sudo npm start --production
nodemon start --production