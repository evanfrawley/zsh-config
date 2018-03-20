#!/usr/bin/env bash

echo "*******************"
echo "** Downloading zsh"
echo "*******************"
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";;
    Darwin*)    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";;
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
