#!/bin/bash
# [MANUTENÇÃO] Remove containers parados, volumes não utilizados e imagens sem tag

docker container prune -f
docker volume prune -f
docker image prune -a -f
