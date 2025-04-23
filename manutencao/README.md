# 🛠️ Manutenção de Scripts

Este diretório contém ferramentas de manutenção e verificação para garantir que todos os scripts do repositório estejam:

✅ Com o cabeçalho correto (`#!/bin/bash`)  
✅ Com permissões de execução  
✅ Padronizados para rodar sem erro no terminal  

---

## 📜 Scripts disponíveis

### 🔧 `fix-shebangs.sh`
Corrige a primeira linha de todos os arquivos `.sh` do repositório para `#!/bin/bash`, garantindo que todos rodem corretamente como scripts de shell.

> **Uso:**  
> `./fix-shebangs.sh`

---

### 🔐 `test-executables.sh`
Verifica se todos os scripts `.sh` estão com permissão de execução (`chmod +x`). Se algum não estiver, ele será listado.

> **Uso:**  
> `./test-executables.sh`

---

### 📌 `check-shebangs.sh`
Mostra a primeira linha de todos os scripts `.sh` para que você possa revisar visualmente se todos têm o cabeçalho correto.

> **Uso:**  
> `./check-shebangs.sh`

---

### 🚀 `run-all-checks.sh`
Executa todos os scripts acima em sequência. Ideal para usar antes de subir alterações pro GitHub ou antes de usar os scripts em produção.

> **Uso:**  
> `./run-all-checks.sh`

---

## 🧠 Recomendações

- Sempre rode `run-all-checks.sh` antes de usar scripts em servidores reais.
- Adicione aqui no futuro outras ferramentas de manutenção (validador de YAML, testador de sintaxe, etc).

---
