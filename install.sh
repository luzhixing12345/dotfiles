#!/bin/bash
sudo apt install -y git vim build-essential tmux

DOTFILE_PATH=$(pwd)
EMAIL="luzhixing12345@163.com"

# read -p "是否初始化 vim? (y/n): " choice
# if [ "$choice" == "y" ]; then
    
# fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \



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
    ssh-keygen -t rsa -C $EMAIL
    echo -e "\nssh key:\n"
    cat ~/.ssh/id_rsa.pub
fi
