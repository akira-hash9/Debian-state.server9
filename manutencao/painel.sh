#!/bin/bash

cd "$(dirname "$0")"  # Garante que o script rode de dentro da pasta correta

while true; do
  clear
  echo "🛠️ PAINEL DE MANUTENÇÃO - Debian-state.server9"
  echo "============================================"
  echo "[1] Corrigir cabeçalhos de todos os scripts (.sh)"
  echo "[2] Verificar permissões de execução"
  echo "[3] Listar cabeçalhos de todos os scripts"
  echo "[4] Executar verificação completa (rodar todos)"
  echo "[0] Sair"
  echo "============================================"
  read -p "Escolha uma opção: " opcao

  case $opcao in
    1)
      echo -e "\n▶ Corrigindo cabeçalhos...\n"
      ./fix-shebangs.sh
      ;;
    2)
      echo -e "\n▶ Verificando permissões...\n"
      ./test-executables.sh
      ;;
    3)
      echo -e "\n▶ Listando cabeçalhos...\n"
      ./check-shebangs.sh
      ;;
    4)
      echo -e "\n▶ Executando verificação completa...\n"
      ./run-all-checks.sh
      ;;
    0)
      echo "Saindo..."
      exit 0
      ;;
    *)
      echo "❌ Opção inválida!"
      ;;
  esac

  echo -e "\nPressione ENTER para voltar ao menu..."
  read
done
