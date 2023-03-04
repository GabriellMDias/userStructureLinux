#!/bin/bash

echo "Excluindo grupos..."
sudo groupdel GRP_ADM
sudo groupdel GRP_VEN
sudo groupdel GRP_SEC
echo "Grupos excluídos!"

echo "Excluindo usuários..."
sudo userdel -rf carlos
sudo userdel -rf maria
sudo userdel -rf joao
sudo userdel -rf debora
sudo userdel -rf sebastiana
sudo userdel -rf roberto
sudo userdel -rf josefina
sudo userdel -rf amanda
sudo userdel -rf rogerio
echo "Usuários excluídos!"

echo "Excluindo diretórios..."
sudo rm -rf /publico
sudo rm -rf /adm
sudo rm -rf /ven
sudo rm -rf /sec
echo "Diretórios excluídos!"
