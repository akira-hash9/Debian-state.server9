#!/bin/bash
# Pinga o gateway padrão

gateway=$(ip route | grep default | awk '{print $3}')
ping -c 4 $gateway
