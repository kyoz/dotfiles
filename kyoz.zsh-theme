local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

if [[ $UID -eq 0 ]]; then
    local user_host='%{$terminfo[bold]$fg[red]%}%n@%m%{$reset_color%}'
    local user_symbol='#'
else
    local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
    local user_symbol='»'
    # local user_symbol='ღ'
    # local user_symbol='☭'
fi

local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'
local rvm_ruby=''
if which rvm-prompt &> /dev/null; then
  rvm_ruby='%{$fg[red]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    rvm_ruby='%{$fg[red]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
  fi
fi
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="
${current_dir} ${rvm_ruby} ${git_branch}
${user_symbol} "
RPS1="%B${return_code}%b"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}<"
ZSH_THEME_GIT_PROMPT_SUFFIX="> %{$reset_color%}"


# https://textart4u.blogspot.com/2013/03/one-line-ascii-text-art.html

# To have padding in gnome terminal (ubuntu), create
# ~/.config/gtk-3.0/gtk.css

# with content:

# VteTerminal,
# TerminalScreen,
# vte-terminal {
#   padding: 0px 0px 0px 16px;
#   -VteTerminal-inner-border: 0px 0px 0px 16px;
# }

