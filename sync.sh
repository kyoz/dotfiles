#!/bin/bash
set -e pipefail

# Utils scripts
. ./.bash_functions

log "\nSync config from your PC to this project...\n"

{
  cp $BASH_ALIASES_PATH .bash_aliases && log_success "Synced .bash_aliases"
} || {
  log_error "Can't sync .bash_aliases"
}

{
  cp $BASH_FUNCTIONS_PATH .bash_functions && log_success "Synced .bash_functions"
} || {
  log_error "Can't sync .bash_functions"
}

{
  cp $BASH_PROFILE_PATH .bash_profile && log_success "Synced .bash_profile"
} || {
  log_error "Can't sync .bash_profile"
}

{
  cp $GIT_CONFIG_PATH .gitconfig && log_success "Synced .gitconfig"
} || {
  log_error "Can't sync .gitconfig"
}

{
  cp $ZSH_PATH .zshrc && log_success "Synced .zshrc"
} || {
  log_error "Can't sync .zshrc"
}

{
  cp $ZSH_THEME_PATH purify.zsh-theme && log_success "Synced zsh theme"
} || {
  log_error "Can't sync zsh theme"
}

{
  cp "${VSCODE_PATH}/settings.json" ./configs/vscode/settings.json &&
  cp "${VSCODE_PATH}/keybindings.json" ./configs/vscode/keybindings.json &&
  log_success "Sync vscode settings"
} || {
  log_error "Can't sync vscode settings"
}

{
  rm -rf ./configs/vscode/snippets && mkdir ./configs/vscode/snippets &&
  cp -R  "${VSCODE_PATH}/snippets/." ./configs/vscode/snippets/ &&
  log_success "Synced vscode snippets"
} || {
  log_error "Can't sync vscode snippets"
}
