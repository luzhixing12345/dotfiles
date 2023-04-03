#!/bin/bash

# 检查vim是否已安装
if ! command -v vim &> /dev/null
then
    echo "vim 未安装"
    echo "请执行以下命令安装vim："
    echo "sudo apt-get install vim"
fi

# 检查xclip是否已安装
if ! command -v xclip &> /dev/null
then
    echo "xclip 未安装"
    echo "请执行以下命令安装xclip："
    echo "sudo apt-get install xclip"
fi

# 检查curl是否已安装
if ! command -v curl &> /dev/null
then
    echo "curl 未安装"
    echo "请执行以下命令安装curl："
    echo "sudo apt-get install curl"
fi

cp .vimrc ~/.vimrc
mkdir -p ~/.vim/syntax
cp c.vim ~/.vim/syntax/c.vim
echo "finished!"
