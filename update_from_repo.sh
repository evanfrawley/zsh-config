#!/usr/bin/env zsh

cd ~/zsh-config
git pull
cp ~/zsh-config/.zshrc ~/.zshrc
cp ~/zsh-config/secrets.zsh ~/secrets.zsh
source ~/.zshrc
