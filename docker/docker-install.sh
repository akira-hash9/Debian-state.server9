#!/bin/bash
# [BÁSICO] Instala Docker e Docker Compose no Debian

sudo apt update
sudo apt install -y ca-certificates curl gnupg lsb-release

# Adiciona a chave oficial do Docker
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Adiciona repositório do Docker
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian   $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Instala Docker Engine e Compose
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Habilita e inicia o serviço
sudo systemctl enable docker
sudo systemctl start docker

# Verifica instalação
docker --version
docker compose version
