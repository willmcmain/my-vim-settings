#! /usr/bin/env bash

VIM_DIR=~/.vim
BUNDLE_DIR=$VIM_DIR/bundle

# Install gvim/macvim
if [ "$(uname -s)" == "Darwin" ]; then
    brew install macvim
else
    sudo apt-get install vim-gtk
fi

mkdir -p $BUNDLE_DIR
if [ ! -d $BUNDLE_DIR/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git $BUNDLE_DIR/Vundle.vim
fi

vim +PluginInstall +qall

if [ ! -d $VIM_DIR/fonts ]; then
    git clone https://github.com/powerline/fonts $VIM_DIR/fonts
fi

$VIM_DIR/fonts/install.sh
