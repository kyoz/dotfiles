# Config for dual monitor

xrandr | grep 'HDMI1 connected' && xrandr --output HDMI1 --mode 1920x1080 --primary
xrandr | grep 'DP1 connected' && xrandr --output DP1 --mode 1360x768 --right-of HDMI1
96dpi
