#!/bin/bash

### Limpando Ambiente

echo "Removendo Diretorios"

rm -Rf /publico
rm -Rf /adm
rm -Rf /ven
rm -Rf /sec

echo "Removendo Grupos"

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo "Removendo Usuarios"

userdel -r -f carlos
userdel -r -f debora
userdel -r -f josefina
userdel -r -f maria
userdel -r -f sebastiana
userdel -r -f amanda
userdel -r -f joao
userdel -r -f roberto
userdel -r -f rogerio

### Iniciando Ambiene ###

echo "Criando Diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando  Usuarios"

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
useradd joao -c "Joao" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -crypt senha123)

echo "Definindo proprietários dos diretorios"

chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Definindo permissão nos diretorios"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
