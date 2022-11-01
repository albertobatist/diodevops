#!/bin/bash

echo "Aguarde.. Diretorios sendo criados!"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Aguarde.. Grupos de acesso sendo criados!"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Só mais um instante.. Usuarios sendo criados!"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Xpto123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Xpto123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Xpto123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Xpto321) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Xpto321) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Xpto321) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Xpto213) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Xpto213) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Xpto213) -G GRP_SEC

echo "Aplicando permissões aos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Processo concluido."