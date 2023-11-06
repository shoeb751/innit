#! /bin/bash


[[ -S $SSH_AUTH_SOCK ]] && ( ( ps aux | grep [s]sh-agent > /dev/null 2>&1) || ( rm $SSH_AUTH_SOCK && ssh-agent -a $SSH_AUTH_SOCK ) ) || ssh-agent -a $SSH_AUTH_SOCK

# Add non public keys to SSH agent if things are fine
ssh-add -l > /dev/null 2>&1 || ssh-add ~/.ssh/id_ed25519_*[!b]