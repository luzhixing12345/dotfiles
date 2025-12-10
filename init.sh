
# apt install sudo
# sudo apt install curl wget
# curl -Ls https://mirrors.v2raya.org/go.sh | sudo bash
# sudo systemctl disable v2ray --now
# wget -qO - https://apt.v2raya.org/key/public-key.asc | sudo tee /etc/apt/trusted.gpg.d/v2raya.asc
# echo "deb https://apt.v2raya.org/ v2raya main" | sudo tee /etc/apt/sources.list.d/v2raya.list
# sudo apt update
# sudo apt install v2raya
# sudo systemctl start v2raya.service
# sudo systemctl enable v2raya.service

# echo "http://localhost:2017/\n"
# echo "V2rayN: https://me.tofly.cyou/user"
# echo "more info: https://luzhixing12345.github.io/2022/11/08/%E7%8E%AF%E5%A2%83%E9%85%8D%E7%BD%AE/Linux%E4%BB%A3%E7%90%86%E9%85%8D%E7%BD%AE/"

# if CentOS
sudo yum -y install vim tmux wget unzip

# vim install
cp -r .vim ~/.vim
cp .vimrc ~/.vimrc

# tmux 配置
cp .tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf

# bashrc
cp .bashrc ~/.bashrc
source ~/.bashrc

# gdb
mkdir -p ~/.config/gdb
cp gdbinit ~/.config/gdb/gdbinit

# clangd
mkdir -p ~/.config/clangd
cp clangd_config.yaml ~/.config/clangd/config.yaml
# cd tar_files
# unzip clangd-linux-19.1.2.zip
# clangd_path=`pwd`/clangd_19.1.2/bin/

# echo -e "\nexport PATH=$clangd_path:$PATH" >> ~/.bashrc

# echo in red
echo -e "\033[31mplease exit and login\033[0m"