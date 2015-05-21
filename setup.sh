#!/bin/bash

## Installing NGINX
sudo apt-get install nginx

## Install Node
sudo apt-get update
sudo apt-get install nodejs
sudo apt-get install npm

## Install Ghost
# Download
wget https://ghost.org/zip/ghost-0.6.3.zip
unzip ghost-0.6.3.zip
rm ghost-0.6.3.zip

# Install
sudo npm install --production
sudo npm start --production