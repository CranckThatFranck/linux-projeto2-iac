#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando softwares..."
apt-get install apache2 -y
apt-get install unzip -y
apt-get install wget -y

echo "Baixando e copiando os arquivos da aplicação Web..."
cd /tmp
wget #inserir link git
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Finalizado..."

