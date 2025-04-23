#!/bin/bash
# Instala e ativa fail2ban

sudo apt update
sudo apt install -y fail2ban
sudo systemctl enable fail2ban
sudo systemctl start fail2ban
