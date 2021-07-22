#! /bin/bash

# you need to be in this directory to run this command
# TODO: Make this better

ln -sf `pwd`/../main/bashrc ~/.bashrc
ln -sf `pwd`/../tmux/.tmux/.tmux.conf ~/.tmux.conf
ln -sf `pwd`/../tmux/.tmux.conf.local ~/.tmux.conf.local
