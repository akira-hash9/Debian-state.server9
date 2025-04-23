#!/bin/bash
# Top 10 processos por uso de memória

ps aux --sort=-%mem | head -n 10
