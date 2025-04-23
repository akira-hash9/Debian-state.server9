#!/bin/bash
# Para todos os containers

docker stop $(docker ps -q)
