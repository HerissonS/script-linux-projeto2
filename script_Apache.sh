#!/bin/bash
sudo su

echo "Atualizando sistema"
apt-get update
apt-get upgrade -y

echo "Instalando Apache2 e unzip"
apt-get install apache2
apt-get install unzip

echo "Download da aplicacao"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Extraindo arquivos"
unzip main.zip
cd linux-site-dio-main

echo "Copiando aplicacao para pasta do apache"

cp -R * /var/www/html

echo "Finalizado!"