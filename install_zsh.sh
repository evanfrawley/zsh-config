#!/usr/bin/env bash
print_cmd() {
  echo "*******************"
  echo "** $1"
  echo "*******************"
}

install_zsh_linux() {
  sudo apt update
  apt install -y zsh
}

install_zsh_mac() {
  brew install zsh zsh-completions
}

install_oh_my_zsh() {
  print_cmd "Installing zsh"
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}


install_thefuck_linux() {
  print_cmd "Installing thefuck"
  sudo apt update
  sudo apt install -y python3-dev python3-pip
  sudo pip3 install thefuck
}

install_thefuck_mac() {
  print_cmd "Installing thefuck"
  brew install thefuck
}

print_cmd "Downloading zsh"
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     install_zsh_linux; install_oh_my_zsh; install_thefuck_linux;;
    Darwin*)    install_zsh_mac; install_oh_my_zsh; install_thefuck_mac;;
    *)          machine="UNKNOWN:${unameOut}, please use a real dev env"
esac

exit 0
