#!/bin/bash
set -e pipefail

# Utils scripts
. ./.bash_utils

log "\nUpdating config to your PC...\n"

copy .bash_aliases $BASH_ALIASES_PATH
copy .bash_profile $BASH_PROFILE_PATH
copy .bashrc $BASHRC_PATH
copy .gitconfig $GIT_CONFIG_PATH
copy .tmux.conf $TMUX_PATH
copy .vimrc $VIM_PATH
copy .zshrc $ZSH_PATH

if [[ "$OSTYPE" == *"linux"* ]]; then
  # X
  copy .Xdefaults $X_DEFAULT_PATH
  copy .xinitrc $X_INITRC_PATH
  copy .Xmodmap $X_MODMAP_PATH
  copy .xprofile $X_PROFILE_PATH
  copy .Xresources $X_RESOURCE_PATH

  # Apps
  copy .dunstrc $DUNST_PATH

  # Tools
  copy_folder .local/bin $LOCAL_BIN_PATH
fi

