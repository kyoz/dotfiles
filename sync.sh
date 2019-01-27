#!/bin/bash
set -e pipefail

# Utils scripts
. ./.bash_utils

log "\nSync config from your PC to this project...\n"

{
  cp $BASH_ALIASES_PATH .bash_aliases && log_success "Synced .bash_aliases"
} || {
  log_error "Can't sync .bash_aliases"
}

{
  cp $BASH_UTILS_PATH .bash_utils && log_success "Synced .bash_utils"
} || {
  log_error "Can't sync .bash_utils"
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
  cp $TMUX_PATH .tmux.conf && log_success "Synced .tmux.conf"
} || {
  log_error "Can't sync .tmux.conf"
}

{
  cp $ALACRITTY_PATH .alacritty.yml && log_success "Synced .alacritty.yml"
} || {
  log_error "Can't sync .alacritty.yml"
}

{
  cp $HYPER_PATH .hyper.js && log_success "Synced .hyper.js"
} || {
  log_error "Can't sync .hyper.js"
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
