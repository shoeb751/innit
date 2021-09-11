#!/bin/bash

# tries to fix video

v4l2-ctl -d /dev/video2 -c exposure_absolute=5000
v4l2-ctl -d /dev/video2 -c gamma=200,sharpness=7,exposure_absolute=512,brightness=0,saturation=10,hue=0,contrast=16,hue=0,contrast=16,power_line_frequency=1
