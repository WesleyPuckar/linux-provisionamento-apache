#  Script de Provisionamento de Servidor Web (Apache)

Este projeto faz parte do desafio de **Infraestrutura como Código (IaC)**, focado na automação do setup de um servidor web Apache em ambiente Linux (Ubuntu/Debian) e na implantação de uma aplicação web fictícia de forma 100% automatizada.

## 📋 Sobre o Desafio
O objetivo principal é substituir processos manuais de configuração por automação via Shell Script, garantindo previsibilidade, consistência e agilidade na entrega do ambiente.

### Etapas executadas pelo script:
1. **Atualização** do sistema operacional (repositórios e pacotes).
2. **Instalação** do servidor web Apache (`apache2`) e do descompactador (`unzip`).
3. **Download** automático dos arquivos da aplicação hospedados no GitHub para a pasta temporária `/tmp`.
4. **Extração e deploy** dos arquivos do site dentro do diretório padrão do Apache (`/var/www/html/`).

##  Tecnologias Utilizadas
* **Linux (Ubuntu/Debian)**
* **Shell Script (`bash`)**
* **Apache2**
* **Git & GitHub**

##  Como Executar o Projeto

### Pré-requisitos
* Uma máquina virtual Linux (ex: VirtualBox) com acesso à internet.
* Privilégios de superusuário (`root` ou `sudo`).

### Passo a Passo

1. **Clone este repositório ou crie o arquivo do script:**
   ```bash
   nano iac-apache.sh
   ```

2. **Copie e cole o código do script dentro do arquivo**, salve e saia do editor.

3. **Adicione permissão de execução ao script:**
   ```bash
   chmod +x iac-apache.sh
   ```

4. **Execute o script com privilégios de administrador:**
   ```bash
   sudo ./iac-apache.sh
   ```

5. **Testar o resultado:**
   Abra o navegador no seu sistema hospedeiro e digite o endereço IP da sua máquina virtual. A aplicação web clonada deverá ser exibida perfeitamente!

---
Projetado como parte do portfólio de infraestrutura.
