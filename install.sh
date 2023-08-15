#!/bin/bash
sudo apt install -y git vim build-essential tmux

DOTFILE_PATH=$(pwd)

# read -p "是否初始化 vim? (y/n): " choice
# if [ "$choice" == "y" ]; then
    
# fi


# vim 配置
ln -s $DOTFILE_PATH/.vimrc ~/.vimrc
mkdir -p ~/.vim/syntax
cp $DOTFILE_PATH/c.vim ~/.vim/syntax/c.vim

ln -s $DOTFILE_PATH/.vim ~/.vim
vim -c 'source ~/.vimrc | PlugInstall' -c ':qall'

# tmux 配置
ln -s $DOTFILE_PATH/.tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf

# bashrc
#!/bin/bash
cat $DOTFILE_PATH/.bashrc >> ~/.bashrc
source ~/.bashrc


# gdbinit
mkdir -p ~/.config/gdb
ln -s $DOTFILE_PATH/gdbinit ~/.config/gdb/gdbinit/


# docker
read -p "是否初始化 docker? (y/n): " choice
if [ "$choice" == "y" ]; then
    curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
fi

read -p "是否初始化 ssh? (y/n): " choice
if [ "$choice" == "y" ]; then
    ssh-keygen -t rsa -C "luzhixing12345@163.com"
    echo -e "\nssh key:\n"
    cat ~/.ssh/id_rsa.pub
fi
