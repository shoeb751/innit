RP_APP_NAME=$(ratpoison -c 'info %a')
rofi -show "Exit ${RP_APP_NAME}" -modi "Exit ${RP_APP_NAME}:rp_exit.sh"
