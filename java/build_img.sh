#!/bin/bash

VERSAO="0.2"
DHUSER="pedrotonin"

# DOWNLOAD DA IMAGEM JAVA
docker pull openjdk:22-bullseye
# CRIA A IMAGEM DESEJADA NA VERSAO DESEJADA
docker build -t ${DHUSER}/openjdk:${VERSAO} .
# FAZ A ÚLTIMA VERSAO CRIADA RECEBER A TAG LATEST
docker tag ${DHUSER}/openjdk:${VERSAO} ${DHUSER}/openjdk

# PUSH DAS IMAGENS PARA O DOCKER HUB
docker login # nesse ponto ele para e pede para o usuário fazer o login
docker push ${DHUSER}/openjdk:${VERSAO}
docker push ${DHUSER}/openjdk
# docker logout