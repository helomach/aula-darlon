#!/bin/bash

DHUSER="pedrotonin"

# CRIA A IMAGEM BASE
docker build -t ${DHUSER}/st:base -f Dockerfile_base .
# CRIA A IMAGEM DESEJADA EM NOVA VERSAO
docker build --no-cache -t ${DHUSER}/st:$1 .
# FAZ A ÚLTIMA VERSAO CRIADA RECEBER A TAG LATEST
docker tag ${DHUSER}/st:$1 ${DHUSER}/st

# PUSH DAS IMAGENS PARA O DOCKER HUB
docker login # nesse ponto ele para e pede para o usuário fazer o login
docker push ${DHUSER}/st:base
docker push ${DHUSER}/st:$1
docker push ${DHUSER}/st
# docker logout