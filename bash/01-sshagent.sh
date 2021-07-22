#! /bin/bash


[[ -S $SSH_AUTH_SOCK ]] && ( ( ps aux | grep [s]sh-agent > /dev/null 2>&1) || ( rm $SSH_AUTH_SOCK && ssh-agent -a $SSH_AUTH_SOCK ) ) || ssh-agent -a $SSH_AUTH_SOCK

ssh-add -l > /dev/null 2>&1 || ssh-add