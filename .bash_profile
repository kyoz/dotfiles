export TERM=xterm-256color

#if you use oh-my-zsh, remember to put 'source ~/.bash_profile' at the end of .zshrc

# aliases 
alias cl="clear";
alias sb="source ~/.bash_profile";
alias vb="vim ~/.bash_profile";
alias delDSF="find . -name '.DS_Store' -type f -delete";
alias gh="cd ~/Documents/Github";
alias d="cd ~/Desktop";
alias rmf="rm -rf $1";

# code aliases
alias c="code .";
alias cr="code . -r";

# utils aliases
alias pg="echo 'Pinging Google' && ping www.google.com";

# git aliases
alias ga="git add .";
alias gc="git commit -m $1";
alias gs="git status";
alias gp="git pull";
alias gf="git fetch";
alias gpush="git push";
alias gd="git diff";
alias gl="git lg";

# npm aliases
alias nck="npm-check-updates";
alias nlg="npm list -g --depth=0";
alias ni="npm install";
alias nu="npm uninstall $1";
alias nug="npm uninstall -g $1";
function nv { npm view "$1" version; }
function nvs { npm view "$1" versions; }

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
