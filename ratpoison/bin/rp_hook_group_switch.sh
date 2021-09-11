#! /bin/bash
#ratpoison -c "addhook switchgroup exec rp_hook_group_switch.sh"

GID=$(ratpoison -c 'groups' | grep '*' | sed 's/\*.*//g')
GFILE="/tmp/rp/groups/${GID}"
echo ${GFILE}

[[ -f "${GFILE}" ]] && ratpoison -c "sfrestore $(cat ${GFILE})"