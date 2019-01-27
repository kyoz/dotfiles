#!/bin/bash
set -e pipefail

# Utils scripts
. ./.bash_utils

log "\nUpdating config to your PC...\n"

{
  cp .bash_aliases $BASH_ALIASES_PATH && log_success "Updated .bash_aliases"
} || {
  log_error "Can't update .bash_aliases"
}

{
  cp .bash_utils $BASH_UTILS_PATH && log_success "Updated .bash_utils"
} || {
  log_error "Can't update .bash_utils"
}

{
  cp .bash_profile $BASH_PROFILE_PATH && log_success "Updated .bash_profile"
} || {
  log_error "Can't update .bash_profile"
}

{
  cp .gitconfig $GIT_CONFIG_PATH && log_success "Updated .gitconfig"
} || {
  log_error "Can't update .gitconfig"
}

{
  cp .zshrc $ZSH_PATH && log_success "Updated .zshrc"
} || {
  log_error "Can't update .zshrc"
}

{
  cp .tmux.conf $TMUX_PATH && log_success "Updated .tmux.conf"
} || {
  log_error "Can't update .tmux.conf"
}

{
  cp .alacritty.yml $ALACRITTY_PATH && log_success "Updated .alacritty.yml"
} || {
  log_error "Can't update .alacritty.yml"
}

{
  cp .hyper.js $HYPER_PATH && log_success "Updated .hyper.js"
} || {
  log_error "Can't update .hyper.js"
}

{
  cp purify.zsh-theme $ZSH_THEME_PATH && log_success "Updated zsh theme"
} || {
  log_error "Can't update zsh theme"
}

{
  cp ./configs/vscode/settings.json "${VSCODE_PATH}/settings.json" &&
  cp ./configs/vscode/keybindings.json "${VSCODE_PATH}/keybindings.json" &&
  log_success "Updated vscode settings"
} || {
  log_error "Can't update vscode settings"
}

{
  rm -rf "${VSCODE_PATH}/snippets" && mkdir "${VSCODE_PATH}/snippets" &&
  cp -R ./configs/vscode/snippets/. "${VSCODE_PATH}/snippets/" &&
  log_success "Updated vscode snippets"
} || {
  log_error "Can't update vscode snippets"
}
