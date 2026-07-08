#!/bin/bash

echo "=========================================================="
echo " Atualizando o sistema e os repositórios... "
echo "=========================================================="
apt-get update -y
apt-get upgrade -y

echo "=========================================================="
echo " Instalações necessárias (Apache2 e Unzip)... "
echo "=========================================================="
apt-get install apache2 -y
apt-get install unzip -y

echo "=========================================================="
echo " Baixando a aplicação do projeto no diretório /tmp... "
echo "=========================================================="
cd /tmp
# Baixando o zip direto do repositório indicado
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "=========================================================="
echo " Descompactando os arquivos e movendo para o Apache... "
echo "=========================================================="
unzip main.zip

# Entrando na pasta que foi descompactada
cd linux-site-dio-main

# Copiando todo o conteúdo de forma recursiva para o diretório padrão do Apache
cp -R * /var/www/html/

echo "=========================================================="
echo " Provisionamento concluído com sucesso! "
echo "=========================================================="