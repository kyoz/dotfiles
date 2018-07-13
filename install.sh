#!/bin/bash
set -e pipefail

# Utils scripts
. ./.bash_functions

log "\nUpdating config to your PC...\n"

{
  cp .bash_aliases $BASH_ALIASES_PATH && log_success "Updated .bash_aliases"
} || {
  log_error "Can't update .bash_aliases"
}

{
  cp .bash_functions $BASH_FUNCTIONS_PATH && log_success "Updated .bash_functions"
} || {
  log_error "Can't update .bash_functions"
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
