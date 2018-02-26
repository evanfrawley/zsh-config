#!/usr/bin/env bash

ZSH_GIT_LOC=~/Github/zsh-config

cp ./.zshrc $ZSH_GIT_LOC
cp ./secrets.zsh $ZSH_GIT_LOC
cp ./sync_zsh_to_github.sh $ZSH_GIT_LOC

cd $ZSH_GIT_LOC
git add .
git commit -m "update zsh config"
git push origin master
