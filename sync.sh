#!/bin/bash
set -e pipefail

# Utils scripts
. ./.bash_utils

log "\nSync config from your PC to this project...\n"

copy $BASH_ALIASES_PATH .bash_aliases
copy $BASH_PROFILE_PATH .bash_profile
copy $BASHRC_PATH .bashrc
copy $GIT_CONFIG_PATH .gitconfig
copy $TMUX_PATH .tmux.conf
copy $VIM_PATH .vimrc
copy $ZSH_PATH .zshrc

if [[ "$OSTYPE" == *"linux"* ]]; then
  # X
  copy $X_DEFAULT_PATH .Xdefaults
  copy $X_INITRC_PATH .xinitrc
  copy $X_MODMAP_PATH .Xmodmap
  copy $X_PROFILE_PATH .xprofile
  copy $X_RESOURCE_PATH .Xresources

  # Apps
  copy $DUNST_PATH .dunstrc

  # Tools
  copy_folder ~/.local/bin .local
fi

