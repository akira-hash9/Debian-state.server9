#!/bin/bash
# Cria um usuário com permissão de sudo

read -p "Novo usuário: " usuario
sudo adduser $usuario
sudo usermod -aG sudo $usuario
