#systemd-run --user --setenv=DISPLAY=:0.0 --setenv=LIBVA_DRIVER_NAME=iHD nix-shell -p ungoogled-chromium --run "chromium --enable-features=VaapiVideoDecoder --use-gl=desktop"
systemd-run --user --setenv=DISPLAY=:0.0 --setenv=LIBVA_DRIVER_NAME=iHD google-chrome-stable --enable-features=VaapiVideoDecoder --use-gl=desktop
