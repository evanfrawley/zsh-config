#!/usr/bin/env bash

print_cmd() {
  echo "*******************"
  echo "** $1"
  echo "*******************"
}

install_zsh() {
  print_cmd "Installing zsh"
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

install_thefuck_linux() {
  print_cmd "Installing thefuck"
  sudo apt update
  sudo apt install python3-dev python3-pip
  sudo pip3 install thefuck
}

install_thefuck_mac() {
  print_cmd "Installing thefuck"
  brew install thefuck
}

print_cmd "Downloading zsh"
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     install_zsh(); install_thefuck_linux();;
    Darwin*)    install_zsh(); install_thefuck_mac();;
    *)          machine="UNKNOWN:${unameOut}, please use a real dev env"
esac
echo ${machine}

set -e

print_cmd "Setting up config files"

cp ~/zsh-config/.zshrc ~/.zshrc
cp ~/zsh-config/secrets.sh ~/secrets.sh
source ~/.zshrc

print_cmd "Done"
