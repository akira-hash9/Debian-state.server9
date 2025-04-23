#!/bin/bash
# Mostra a primeira linha de todos os scripts .sh

echo "[INFO] Verificando cabeçalhos:"
find .. -type f -name "*.sh" -exec head -n 1 {} \;
