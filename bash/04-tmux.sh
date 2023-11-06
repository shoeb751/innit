#!/bin/bash
# ssh-multi
# D.Kovalov
# Based on http://linuxpixies.blogspot.jp/2011/06/tmux-copy-mode-and-how-to-control.html

# a script to ssh multiple servers over multiple tmux panes
# needs to be made better
pssh() {
    [ -z "$1" ] && exit 1
    HOSTS=$1
    [ -z "$HOSTS" ] && exit 1

    local hosts=( $HOSTS )
    #tmux new-window "ssh ${hosts[0]}"
    #unset hosts[0];
    for i in "${hosts[@]}"; do
        tmux split-window -h  "ssh ${PSSH_OPTIONS} ${PSSH_USER}$i"
        tmux select-layout tiled > /dev/null
    done
    tmux set-window-option synchronize-panes on > /dev/null
    tmux select-pane -t 1
    tmux kill-pane

}
export -f pssh

cs() {
   tmux new -s "$*" -d
   tmux switch-client -t "$*"
}

ta() {
        tmux ls > /dev/null 2>&1
        if [ "$?" -eq "0" ]; then
                tmux attach && ta
        else
                tmux new -s $* && ta
        fi
}