# if you use oh-my-zsh, remember to put 'source ~/.bash_profile' at the end of .zshrc

# Adds `~/.local/bin/` and all subdirectories to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# Default App
export TERM=xterm-256color
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="vivaldi-stable"
export FILE="nnn"
# export READER="zathura"

# IBUS
export GTK_IM_MODULE=xim
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export XIM_PROGRAM=/usr/bin/ibus-daemon
export QT4_IM_MODULE=ibus
export CLUTTER_IM_MODULE=ibus

# DWMBAR
export DWMBAR_SEPERATOR="  "
export DWMBAR_CACHE_FOLDER="$HOME/.cache/dwmbar"
export DWMBAR_MODULES="$HOME/.local/bin/dwmbar_functions"

# DWMBAR Modules
export DWMBAR_WEATHER="$DWMBAR_CACHE_FOLDER/weather"
export DWMBAR_CPU="$DWMBAR_CACHE_FOLDER/cpu"
export DWMBAR_MEMORY="$DWMBAR_CACHE_FOLDER/memory"
export DWMBAR_FAN="$DWMBAR_CACHE_FOLDER/fan"
export DWMBAR_KEYBOARD="$DWMBAR_CACHE_FOLDER/keyboard"
export DWMBAR_WIFI="$DWMBAR_CACHE_FOLDER/wifi"
export DWMBAR_SCREEN="$DWMBAR_CACHE_FOLDER/screen"
export DWMBAR_SOUND="$DWMBAR_CACHE_FOLDER/sound"
export DWMBAR_BATTERY="$DWMBAR_CACHE_FOLDER/battery"
export DWMBAR_TIME="$DWMBAR_CACHE_FOLDER/time"

# NVM
export NVM_DIR="$HOME/.nvm"

# Android
export ANDROID_HOME=~/.android/Sdk
export ANDROID_SDK_ROOT=~/.android/Sdk

# Start X Server
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
[[ -f ~/.bashrc ]] && . ~/.bashrc
