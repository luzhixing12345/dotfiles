#!/bin/bash

sudo apt install git vim build-essential zsh

cp .vimrc ~/.vimrc
mkdir -p ~/.vim/syntax
cp c.vim ~/.vim/syntax/c.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
    && vim -c 'source ~/.vimrc | PlugInstall' -c ':qall'


wget https://repo.anaconda.com/archive/Anaconda3-2023.03-1-Linux-x86_64.sh
sh Anaconda3-2023.03-1-Linux-x86_64.sh

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-autosuggestions
mkdir $ZSH_CUSTOM/plugins/incr
curl -fsSL https://mimosa-pudica.net/src/incr-0.2.zsh -o $ZSH_CUSTOM/plugins/incr/incr.zsh

cp .zshrc ~/.zshrc
sed -i 's/^plugins=.*/plugins=(git zsh-autosuggestions)/' ~/.zshrc
chsh -s /bin/zsh