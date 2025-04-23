#!/bin/bash
# Clona repositório via SSH

read -p "Usuário GitHub: " usuario
read -p "Nome do repositório: " repo
git clone git@github.com:$usuario/$repo.git
