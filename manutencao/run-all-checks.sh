#!/bin/bash
# Roda todos os scripts de manutenção de forma sequencial

echo "🔧 Iniciando verificação completa dos scripts..."

echo ""
echo "▶ Corrigindo cabeçalhos..."
./manutencao/fix-shebangs.sh

echo ""
echo "▶ Verificando permissões de execução..."
./manutencao/test-executables.sh

echo ""
echo "▶ Verificando cabeçalhos atuais dos scripts..."
./manutencao/check-shebangs.sh

echo ""
echo "✅ Finalizado. Scripts verificados e corrigidos (se necessário)."
