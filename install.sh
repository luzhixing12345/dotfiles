#!/bin/bash
sudo apt install -y git vim build-essential tmux

# vim 配置
ln -s .vimrc ~/.vimrc
mkdir -p ~/.vim/syntax
cp c.vim ~/.vim/syntax/c.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
    && vim -c 'source ~/.vimrc | PlugInstall' -c ':qall'

# tmux 配置
ln -s .tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf

# docker
curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun

# bashrc
cat .bashrc >> ~/.bashrc
source ~/.bashrc

# gdbinit
mkdir -p ~/.config/gdb
ln -s ./gdbinit ~/.config/gdb/gdbinit/

# ssh
ssh-keygen -t rsa -C "luzhixing12345@163.com"
cat ~/.ssh/id_rsa.pub
