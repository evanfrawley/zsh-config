#!/usr/bin/env zsh

print_cmd() {
  echo "*******************"
  echo "** $1"
  echo "*******************"
}

cd ~/zsh-config

print_cmd "Pulling repo"

git pull

print_cmd "Copying config"

cp ~/zsh-config/.zshrc ~/.zshrc
cp ~/zsh-config/secrets.zsh ~/secrets.zsh

print_cmd "Sourcing config"

source ~/.zshrc
