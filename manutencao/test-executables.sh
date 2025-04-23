#!/bin/bash
# Verifica permissões de execução de todos os scripts

echo "[INFO] Verificando permissões..."
find . -type f -name "*.sh" ! -perm -u=x -exec ls -l {} \;

echo ""
echo "[INFO] Se algum script aparecer acima, ele NÃO é executável!"
