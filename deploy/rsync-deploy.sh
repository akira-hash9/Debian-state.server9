#!/bin/bash
# Envia arquivos para servidor remoto via rsync

read -p "Caminho local: " local
read -p "Destino (user@ip:/caminho): " destino
rsync -avz $local $destino
