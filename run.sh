#!/bin/bash
sudo service nginx start
cd /var/www/ghost
npm start --production