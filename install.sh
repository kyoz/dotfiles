#!/bin/bash
set -e pipefail

# Utils scripts
. ./.bash_utils

log "\nUpdating config to your PC...\n"

copy config.fish $FISH_CONFIG_PATH
copy init.fish $FISH_INIT_PATH
copy aliases.fish $FISH_ALIASES_PATH
copy .gitconfig $GIT_CONFIG_PATH
copy .tmux.conf $TMUX_PATH
copy .vimrc $VIM_PATH

