#!/bin/bash
set -e pipefail

# tput colors
BLACK=0
RED=1
GREEN=2
BLUE=4
WHITE=7

# Dotfiles paths
BASH_ALIASES_PATH=~/.bash_aliases
BASH_FUNCTIONS_PATH=~/.bash_functions
BASH_PROFILE_PATH=~/.bash_profile
GIT_CONFIG_PATH=~/.gitconfig
ZSH_PATH=~/.zshrc
ZSH_THEME_PATH=~/.oh-my-zsh/themes/purify.zsh-theme
VSCODE_PATH="";
VSCODE_PATH_OSX="$HOME/Library/Application Support/Code/User"
VSCODE_PATH_LINUX="$HOME/.config/Code/User"
VSCODE_PATH_WINDOW="%APPDATA%\\Code\\User"

if [ "$(uname)" == "Darwin" ]; then
  # Do something under Mac OS X platform        
  VSCODE_PATH=$VSCODE_PATH_OSX
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Do something under GNU/Linux platform
  VSCODE_PATH=$VSCODE_PATH_LINUX
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # Do something under 32 bits Windows NT platform
  VSCODE_PATH=$VSCODE_PATH_WINDOW
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    # Do something under 64 bits Windows NT platform
  VSCODE_PATH=$VSCODE_PATH_WINDOW
fi

# make text have cool color 
function log {
  tput setaf $GREEN; echo -e $1;
}

function log_success {
  tput setaf $GREEN; echo -e "✔ " $1;
}

function log_error {
  tput setaf $RED; echo -e "✘" $1;
}

# check if a file is exists
# 1: exist | 0: not exist
function is_file_exist {
  local exist=0
  if [ -f $1 ]; then
     local exist=1
  fi
  echo "$exist"
}

# check if a package is installed
# 1: installed | 0: not yet
function is_package_installed {
  local exist=1
  npm list -g --depth=1 --silent | grep $1 >/dev/null 2>&1 || { local exist=0; }
  echo "$exist"
}
