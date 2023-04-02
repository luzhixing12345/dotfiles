sudo apt install -qq -y vim curl xclip 

cp .vimrc ~/.vimrc
mkdir -p ~/.vim/syntax
cp c.vim ~/.vim/syntax/c.vim
echo "finished!"
