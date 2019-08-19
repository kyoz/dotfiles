#!/usr/bin/env sh

# Adjust keyboard typematic delay and rate
xset r rate 200 25

# Start X at 220 DPI
xrandr | grep 'eDP1 connected' && xrandr --output eDP1 --mode 2880x1800 --dpi 220
xrandr | grep 'DP1 connected' && xrandr --output DP1 --mode 1366x768 --right-of eDP1 --scale 1.2x1.2
# xrandr --dpi 220
# xrandr --output DP1 --mode 1366x768

# Merge & load configuration from .Xresources
if [ -f $HOME/.Xresources ]; then
  xrdb -merge ~/.Xresources
fi

# Load Xmodmap
if [ -f $HOME/.Xmodmap ]; then
  xmodmap ~/.Xmodmap
fi

# Load xprofile
if [ -f $HOME/.xprofile ]; then
  . ~/.xprofile
fi

# Let QT and GTK autodetect retina screen and autoadjust
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export GDK_SCALE=2
export GDK_DPI_SCALE=0.3

# Finally, start i3
exec i3
