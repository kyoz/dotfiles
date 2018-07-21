# if you use oh-my-zsh, remember to put 'source ~/.bash_profile' at the end of .zshrc
export TERM=xterm-256color

# aliases
source ~/.bash_aliases

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion