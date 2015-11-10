#!/bin/sh
cp .vimrc ~/.vimrc
cp -r colors/ ~/.vim/

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Success! (if u don't see an error)"

