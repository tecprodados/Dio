#!/bin/bash

### Update/Upgrade

echo "Realziando Update e Upgrade"

apt-get update /y
apt-get upgrade /y

### Install Apache

echo "Instalar e iniciar Apache"

apt-get install apache2 /y

systemctl enable apache2
systemctl start apache2

### Install Unzip
echo "Instalar Unzip"
apt-get install unzip  /y

### Baixando aplicacao

echo "Baixando e descompactando aplicacao"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

echo "Descompactando arquivo"
unzip mail.zip

### Copiando aplicacao para pasta apache

echo "Copiando arquivos para /var/www/html"
cd ./linux-site-dio-main
cp * /var/www/html -y -r -v