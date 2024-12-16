#!/bin/bash

echo "Criando Diretorios"

mkdir /publico

mkdir /adm

mkdir /ven

mkdir /sec

echo "Diretorios Criados com Sucesso"

echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos Criados com Sucesso"

echo "Criando Usuarios e Adicionando aos Grupos"

useradd carlos -c "Carlos Oliveira Souza" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd 123)
useradd maria -c "Maria Oliveira Souza" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd 123)
useradd joao -c "João Oliveira Souza" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd 123)

useradd debora -c "Debora Mendes Melo" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd 123)
useradd sebastiana -c "sebastiana Mendes Melo" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd 123)
useradd roberto -c "Roberto Mendes Melo" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd 123)

useradd jodefina -c "josefina Mariano Nunes" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd 123)
useradd amanda -c "Amanda Mariano Nunes" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd 123)
useradd rogerio -c "Rogerio Mariano Nunes" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd 123)

echo "Usuarios Finalizados com Sucesso"

echo "Adicionando os Grupos ao Diretorio"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Sucesso"

echo "Permissões aos Diretorios"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Sucesso"
