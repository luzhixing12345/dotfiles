#!/bin/bash
sudo apt install -y git vim build-essential tmux clang-format

DOTFILE_PATH=$(pwd)
EMAIL="luzhixing12345@163.com"

<<<<<<< HEAD
# tmux 配置
tmux_conf_path=~/.tmux.conf

if [ ! -e "$tmux_conf_path" ]; then
    echo "Creating $tmux_conf_path..."
    ln -s $DOTFILE_PATH/.tmux.conf $tmux_conf_path
    tmux source-file $tmux_conf_path
else
    echo "$tmux_conf_path already exists."
fi
=======
# read -p "是否初始化 vim? (y/n): " choice
# if [ "$choice" == "y" ]; then
    
# fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \

>>>>>>> 58c1c343e09a6b4421af1f4e16744c7e311f2769

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
