export EDITOR=vim

# used by sshagent
export SSH_AUTH_SOCK=/tmp/ssh-agent.socket
export INNIT_PATH=$(cat ~/.abase)
# PATH

export PATH=${INNIT_PATH}/ratpoison/bin:/home/$USER/bin:/home/$USER/go/bin:$PATH
