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
  cp $VIM_PATH .vimrc && log_success "Synced .vimrc"
} || {
  log_error "Can't sync .vimrc"
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

################################################################################
###########################         ARCH         ###############################
################################################################################

# If not arch, don't sync or install those below files
if [ ! $(uname -r | grep 'ARCH') ]; then
  exit
fi

{
  cp $X_DEFAULT_PATH .Xdefaults && log_success "Synced .Xdefaults"
} || {
  log_error "Can't sync .Xdefaults"
}

{
  cp $X_INITRC_PATH .xinitrc && log_success "Synced .xinitrc"
} || {
  log_error "Can't sync .xinitrc"
}

{
  cp $X_MODMAP_PATH .Xmodmap && log_success "Synced .Xmodmap"
} || {
  log_error "Can't sync .Xmodmap"
}

{
  cp $X_PROFILE_PATH .xprofile && log_success "Synced .xprofile"
} || {
  log_error "Can't sync .xprofile"
}

{
  cp $X_RESOURCE_PATH .Xresources && log_success "Synced .Xresources"
} || {
  log_error "Can't sync .Xresources"
}

{
  cp $SXHKDRC_PATH .config/sxhkd/sxhkdrc && log_success "Synced sxhkdrc"
} || {
  log_error "Can't sync sxhkdrc"
}

{
  cp $I3_PATH .config/i3/config && log_success "Synced i3 config"
} || {
  log_error "Can't sync i3 config"
}

{
  cp $I3_BLOCK_PATH .config/i3blocks/config && log_success "Synced i3 blocks config"
} || {
  log_error "Can't sync i3 blocks config"
}

{
  cp -R $LOCAL_I3_PATH .local/bin/i3 && log_success "Synced local i3 scripts"
} || {
  log_error "Can't sync local i3 scripts"
}

{
  cp -R $LOCAL_I3_BLOCKS_PATH .local/bin/i3blocks && log_success "Synced local i3blocks scripts"
} || {
  log_error "Can't sync local i3blocks scripts"
}

{
  cp -R $LOCAL_TOOLS_PATH .local/bin/tools && log_success "Synced local tool scripts"
} || {
  log_error "Can't sync local tool scripts"
}
