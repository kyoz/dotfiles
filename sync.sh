#!/bin/bash
set -e pipefail

# Utils scripts
. ./.bash_utils

log "\nSync config from your PC to this project...\n"

copy $BASH_ALIASES_PATH .bash_aliases
copy $BASH_UTILS_PATH .bash_utils
copy $BASH_PROFILE_PATH .bash_profile
copy $GIT_CONFIG_PATH .gitconfig
copy $ZSH_PATH .zshrc
copy $ZSH_THEME_PATH purify.zsh-theme
copy $VIM_PATH .vimrc
copy $TMUX_PATH .tmux.conf
copy $ALACRITTY_PATH .alacritty.yml
copy $HYPER_PATH .hyper.js

################################################################################
###########################         ARCH         ###############################
################################################################################

# If not arch, don't sync or install those below files
if [ ! $(uname -r | grep 'ARCH') ]; then
  exit
fi

copy $X_DEFAULT_PATH .Xdefaults
copy $X_INITRC_PATH .xinitrc
copy $X_MODMAP_PATH .Xmodmap
copy $X_PROFILE_PATH .xprofile
copy $X_RESOURCE_PATH .Xresources
copy $SXHKDRC_PATH .config/sxhkd/sxhkdrc
copy $I3_PATH .config/i3/config
copy $I3_BLOCK_PATH .config/i3blocks/config
copy -R $LOCAL_I3_PATH .local/bin
copy -R $LOCAL_I3_BLOCKS_PATH .local/bin
copy -R $LOCAL_TOOLS_PATH .local/bin

