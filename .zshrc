# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/kyoz/.zsh/.oh-my-zsh"

# Theme & Colors
ZSH_THEME="purify"

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Zsh Syntax Highlighting
[ ! -d ~/.zsh/zsh-syntax-highlighting ] && echo "Install zsh syntax highlighting" && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


source ~/.bash_profile

# Clean the terminal
cl

# Print random quote from iquotes
quote

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
