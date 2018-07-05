#!/bin/bash
set -e pipefail

# Utils scripts
. ./.bash_functions

# Dotfiles paths
BASH_ALIASES_PATH=~/.bash_aliases
BASH_FUNCTIONS_PATH=~/.bash_functions
BASH_PROFILE_PATH=~/.bash_profile
GIT_CONFIG_PATH=~/.gitconfig
ZSH_PATH=~/.zshrc
VSCODE_PATH_OSX="$HOME/Library/Application Support/Code/User/"
VSCODE_PATH_LINUX="$HOME/.config/Code/User/"
VSCODE_PATH_WINDOW="%APPDATA%\\Code\\User\\"

{
  cp .bash_aliases $BASH_ALIASES_PATH && log "Updated .bash_aliases"
} || {
  error "Can't update .bash_aliases"
}

{
  cp .bash_functions $BASH_FUNCTIONS_PATH && log "Updated .bash_functions"
} || {
  error "Can't update .bash_functions"
}

{
  cp .bash_profile $BASH_PROFILE_PATH && log "Updated .bash_profile"
} || {
  error "Can't update .bash_profile"
}

{
  cp .gitconfig $GIT_CONFIG_PATH && log "Updated .gitconfig"
} || {
  error "Can't update .gitconfig"
}

{
  cp .zshrc $ZSH_PATH && log "Updated .zshrc"
} || {
  error "Can't update .zshrc"
}

{
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

  cp ./configs/vscode/settings.json "${VSCODE_PATH}settings.json" &&
  cp ./configs/vscode/keybindings.json "${VSCODE_PATH}keybindings.json" &&
  log "Updated vscode settings"

} || {
  error "Can't update vscode settings"
}

#existPkg="$(is_package_installed angular)"
#echo $existPkg
