#!/bin/bash
sudo apt install -y git vim build-essential tmux

DOTFILE_PATH=$(pwd)

# vim 配置
ln -s $DOTFILE_PATH/.vimrc ~/.vimrc
mkdir -p ~/.vim/syntax
cp $DOTFILE_PATH/c.vim ~/.vim/syntax/c.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
    && vim -c 'source ~/.vimrc | PlugInstall' -c ':qall'

# tmux 配置
ln -s $DOTFILE_PATH/.tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf

# docker
# curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun

# bashrc
#!/bin/bash
cat $DOTFILE_PATH/.bashrc >> ~/.bashrc
source ~/.bashrc

# gdbinit
mkdir -p ~/.config/gdb
ln -s $DOTFILE_PATH/gdbinit ~/.config/gdb/gdbinit/

# ssh
# ssh-keygen -t rsa -C "luzhixing12345@163.com"
# cat ~/.ssh/id_rsa.pub
