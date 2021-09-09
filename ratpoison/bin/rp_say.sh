exec 1>/dev/null 2>/dev/null 
python /usr/bin/picospeaker -l en-GB -v 0.5 -o - -t au "$@" | play -
