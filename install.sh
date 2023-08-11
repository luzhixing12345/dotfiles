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
# curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun

# bashrc
#!/bin/bash

# 获取当前路径下的 .clang-format 文件的路径
clang_format_path=$(realpath .clang-format)

# 检查 .clang-format 文件是否存在
if [ -f "$clang_format_path" ]; then
    # 将路径添加到文件中,如果文件不存在则创建
    echo "export clangf=\"$clang_format_path\"" >> ".bashrc"
else
    echo ".clang-format file not found in the current directory."
fi
cat .bashrc >> ~/.bashrc
source ~/.bashrc

# gdbinit
mkdir -p ~/.config/gdb
ln -s ./gdbinit ~/.config/gdb/gdbinit/

# ssh
ssh-keygen -t rsa -C "luzhixing12345@163.com"
cat ~/.ssh/id_rsa.pub
