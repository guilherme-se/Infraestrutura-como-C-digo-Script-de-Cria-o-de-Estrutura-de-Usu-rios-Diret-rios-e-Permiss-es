#!/bin/bash

echo "CRIANDO DIRETORIOS"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "CRIANDO GRUPOS DE USUARIOS"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "CRIANDO USUARIOS"

useradd guilherme -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd rafael -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd henrique -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd rosa -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd larissa -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberta -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd jose -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd arthur -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "ESPECIFICANDO PERMISSOES DE USUARIOS"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM"