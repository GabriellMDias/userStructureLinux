#!/bin/bash

echo "Criando grupos..."
sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC
echo "Grupos criados!"

echo "Criando usuários..."
sudo useradd carlos -m -G GRP_ADM -s /bin/bash -p $(openssl passwd "Senha123")
sudo passwd carlos -e
sudo useradd maria -m -G GRP_ADM -s /bin/bash -p $(openssl passwd "Senha123")
sudo passwd maria -e
sudo useradd joao -m -G GRP_ADM -s /bin/bash -p $(openssl passwd "Senha123")
sudo passwd joao -e

sudo useradd debora -m -G GRP_VEN -s /bin/bash -p $(openssl passwd "Senha123")
sudo passwd debora -e
sudo useradd sebastiana -m -G GRP_VEN -s /bin/bash -p $(openssl passwd "Senha123")
sudo passwd sebastiana -e
sudo useradd roberto -m -G GRP_VEN -s /bin/bash -p $(openssl passwd "Senha123")
sudo passwd roberto -e

sudo useradd josefina -m -G GRP_SEC -s /bin/bash -p $(openssl passwd "Senha123")
sudo passwd josefina -e
sudo useradd amanda -m -G GRP_SEC -s /bin/bash -p $(openssl passwd "Senha123")
sudo passwd amanda -e
sudo useradd rogerio -m -G GRP_SEC -s /bin/bash -p $(openssl passwd "Senha123")
sudo passwd rogerio -e
echo "Usuários criados!"

echo "Criando diretórios..."
sudo mkdir /publico -m 777
sudo chown root /publico

sudo mkdir /adm -m 770
sudo chown root:GRP_ADM /adm

sudo mkdir /ven -m 770
sudo chown root:GRP_VEN /ven

sudo mkdir /sec -m 770
sudo chown root:GRP_SEC /sec
echo "Diretórios criados!"
