#!/usr/bin/env bash

echo "*******************"
echo "** Downloading zsh"
echo "*******************"
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     sudo apt-get update; sudo apt-get upgrade; sudo apt-get install -y zsh;;
    Darwin*)    ruby -e "$(curl -fsSL https://raw.zshhubusercontent.com/Homebrew/install/master/install)"; brew doctor; brew install zsh; sudo -s 'echo /usr/local/bin/zsh >> /etc/shells' && chsh -s /usr/local/bin/zsh;;
    *)          machine="UNKNOWN:${unameOut}, please use a real dev env"
esac
echo ${machine}

set -e
echo "*******************"
echo "** Setting up..."
echo "*******************"

cp ~/zsh-config/.zshrc ~/.zshrc
source ~/.zshrc

echo "*******************"
echo "** Done."
echo "*******************"
