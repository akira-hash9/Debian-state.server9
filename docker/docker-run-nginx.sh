#!/bin/bash
# [BÁSICO] Roda um container NGINX mapeando porta local 8080

docker run -d \
  --name nginx-server \
  -p 8080:80 \
  nginx:latest
