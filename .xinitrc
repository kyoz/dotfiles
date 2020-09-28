
# Start X
xrandr --output default --mode 2880x1800 &
xrandr --dpi 144 &

# Serve Xmodmap
if [ -f $HOME/.Xmodmap ]; then
  xmodmap ~/.Xmodmap &
fi

# Merge & load configuration from .Xresources
if [ -f $HOME/.Xresources ]; then
  xrdb -merge ~/.Xresources &
fi

# Load xprofile
if [ -f $HOME/.xprofile ]; then
  . ~/.xprofile &
fi

# Let QT and GTK autodetect retina screen and autoadjust
export QT_AUTO_SCREEN_SCALE_FACTOR=1 &
export GDK_SCALE=2 &
export GDK_DPI_SCALE=0.5 &

# Backlight (50% is enough, save power tho :]])
xbacklight -set 50 &

# Audio
amixer set Master 85% &

# Start Fan
sudo mbpfan start &

# Compositor
picom -f &

# DWMBar
dwmbar_init
dwmbar true &

# Start DWM
exec dwm
