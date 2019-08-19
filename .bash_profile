# if you use oh-my-zsh, remember to put 'source ~/.bash_profile' at the end of .zshrc

export TERM=xterm-256color
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="brave"
# export READER="zathura"
# export FILE="nnn"

# Adds `~/.local/bin/` and all subdirectories to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# Start X Server
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
[[ -f ~/.bashrc ]] && . ~/.bashrc
