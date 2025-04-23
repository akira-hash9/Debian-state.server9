#!/bin/bash
# Corrige automaticamente o cabeçalho de todos os arquivos .sh
# Força a primeira linha para: #!/bin/bash

find . -type f -name "*.sh" -exec sed -i '1s|.*|#!/bin/bash|' {} \;
echo "[OK] Cabeçalhos corrigidos para todos os .sh"
