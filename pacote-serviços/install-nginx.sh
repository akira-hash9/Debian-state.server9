#!/bin/bash
# Instala NGINX

sudo apt update
sudo apt install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx
