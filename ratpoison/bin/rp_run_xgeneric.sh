systemd-run --user -E XDG_CURRENT_DESKTOP=sway -E XDG_SESSION_TYPE=wayland --setenv=DISPLAY=:0.0 $*
