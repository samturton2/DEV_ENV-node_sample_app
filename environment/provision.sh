#!/bin/bash

sudo apt update
sudo apt install nginx -y

sudo apt install python-software-properties -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs -y
sudo npm install pm2 -g

cd /app
sudo npm install
npm start
