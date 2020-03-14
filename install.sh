#!/bin/bash
set -e pipefail

# Utils scripts
. ./.bash_utils

log "\nUpdating config to your PC...\n"

copy .bash_aliases $BASH_ALIASES_PATH
copy .bash_utils $BASH_UTILS_PATH
copy .bash_profile $BASH_PROFILE_PATH
copy .gitconfig $GIT_CONFIG_PATH
copy .zshrc $ZSH_PATH
copy .vimrc $VIM_PATH
copy .tmux.conf $TMUX_PATH
copy .alacritty.yml $ALACRITTY_PATH
copy .hyper.js $HYPER_PATH
copy purify.zsh-theme $ZSH_THEME_PATH

# If os is OSX, then install those below files
if [[ "$OSTYPE" == *"darwin"* ]]; then
  copy .config/yabai/yabairc $YABAI_PATH
  copy .config/skhd/skhdrc $SKHD_PATH
fi

# If os is linux, then install those below files
if [[ "$OSTYPE" == *"linux"* ]]; then
  copy .Xdefaults $X_DEFAULT_PATH
  copy .xinitrc $X_INITRC_PATH
  copy .Xmodmap $X_MODMAP_PATH
  copy .xprofile $X_PROFILE_PATH
  copy .Xresources $X_RESOURCE_PATH
  copy .config/sxhkd/sxhkdrc $SXHKDRC_PATH
  copy .config/i3/config $I3_PATH
  copy .config/i3blocks/config $I3_BLOCK_PATH
  copy_folder .local/bin/i3 $LOCAL_BIN_PATH
  copy_folder .local/bin/i3blocks $LOCAL_BIN_PATH
  copy_folder .local/bin/tools $LOCAL_BIN_PATH
fi

