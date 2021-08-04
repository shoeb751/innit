#! /bin/bash

# you need to be in this directory to run this command
# TODO: Make this better
[[  "$(pwd)" != "$(realpath $(dirname $0))" ]] && echo "Need to be in directory containing script" && exit 1

ln -sf `pwd`/../main/bashrc ~/.bashrc
ln -sf `pwd`/../tmux/.tmux/.tmux.conf ~/.tmux.conf
ln -sf `pwd`/../tmux/.tmux.conf.local ~/.tmux.conf.local
ln -sf `pwd`/../main/main.vim ~/.vimrc
