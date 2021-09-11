#! /bin/bash
#ratpoison -c "addhook switchframe exec rp_hook_frame_switch.sh"
[[ ! -d "/tmp/rp/groups" ]] && mkdir -p /tmp/rp/groups


GID=$(ratpoison -c 'groups' | grep '*' | sed 's/\*.*//g')
GFILE="/tmp/rp/groups/${GID}"
ratpoison -c sfdump > ${GFILE}