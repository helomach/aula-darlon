#!/bin/bash
git config credential.https://github.com.username ${GIT_LOGIN}
git config --global user.name ${GIT_NAME}
git config --global user.email ${GIT_EMAIL}

