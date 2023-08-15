#!/bin/bash
sudo apt install -y git vim build-essential tmux

DOTFILE_PATH=$(pwd)

# read -p "是否初始化 vim? (y/n): " choice
# if [ "$choice" == "y" ]; then
    
# fi

# vim 配置
vimrc_path=~/.vimrc

if [ ! -e "$vimrc_path" ]; then
    echo "Creating $vimrc_path..."
    ln -s $DOTFILE_PATH/.vimrc $vimrc_path
    mkdir -p ~/.vim/syntax
    cp $DOTFILE_PATH/c.vim ~/.vim/syntax/c.vim
    ln -s $DOTFILE_PATH/.vim ~/.vim
    vim -c 'source ~/.vimrc | PlugInstall' -c ':qall'
else
    echo "$vimrc_path already exists."
fi


# tmux 配置
tmux_conf_path=~/.tmux.conf

if [ ! -e "$tmux_conf_path" ]; then
    echo "Creating $tmux_conf_path..."
    ln -s $DOTFILE_PATH/.tmux.conf $tmux_conf_path
    tmux source-file $tmux_conf_path
else
    echo "$tmux_conf_path already exists."
fi


# bashrc
#!/bin/bash
cat $DOTFILE_PATH/.bashrc >> ~/.bashrc
source ~/.bashrc


# gdbinit
gdb_init_path=~/.config/gdb/gdbinit/

if [ ! -e "$gdb_init_path" ]; then
    echo "Creating $gdb_init_path..."
    mkdir -p ~/.config/gdb
    ln -s $DOTFILE_PATH/gdbinit $gdb_init_path
else
    echo "$gdb_init_path already exists."
fi


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
