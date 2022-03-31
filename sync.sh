#!/bin/bash
set -e pipefail

# Utils scripts
. ./.bash_utils

log "\nSync config from your PC to this project...\n"

copy $FISH_CONFIG_PATH config.fish 
copy $FISH_INIT_PATH init.fish
copy $FISH_ALIASES_PATH aliases.fish
copy $GIT_CONFIG_PATH .gitconfig
copy $TMUX_PATH .tmux.conf
copy $VIM_PATH .vimrc

