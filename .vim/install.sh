#!/bin/sh
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim/
git submodule update --init
git clone https://github.com/tothebeat/powerline-fonts.git ~/.fonts/
fc-cache -vf ~/.fonts
echo Change your font in the terminal program!
