# general
alias c="cd"
alias cl="clear";
alias sb="source ~/.bash_profile"; # Apply .bash_profile changes
alias vb="nvim ~/.bash_profile"; # Open edit .bash_profile
alias cf="cd ~/.config"; # Go to Config folder
alias d="cd ~/Documents"; # Go to Document folder
alias dt="cd ~/Desktop"; # Go to Desktop
alias dl="cd ~/Downloads"; # Go to Downloads
alias gh="cd ~/Documents/Github"; # Go to Github folder
alias pj="cd ~/Documents/Projects" # Go to Project folder
alias play="cd ~/Documents/Playground" # Go to Playground folder
alias nvimc="cd ~/.config/nvim" # Go to nvim config folder
alias rmf="rm -rf $1"; # Delete folder and everything inside it
alias ds="du -sh $1"; # Directory size

function mkd -d "Create a directory and jump inside it :)"
  mkdir $argv && cd $argv
end

# Apps
alias n="nvim"

# git aliases
alias ga="git add .";
alias gc="git commit -m $1";
alias gca="git add . && git commit -m $1";
alias gcl="git clone $1";
alias gs="git status";
alias gp="git pull";
alias gf="git fetch";
alias gpush="git push";
alias gd="git diff";
alias gl="git lg";
alias gco="git co $1";
alias gbr="git br -va";
alias gr="git remote -v";
alias gt="git tag";
alias gsi="git submodule update --init --recursive";
alias gsu="git submodule update --recursive";
alias gtpush="git push origin $1";
alias gtdel="git tag -d $1 && git push --delete origin $1";

# npm aliases
alias nlg="npm list -g --depth=0";
alias ni="npm install";
alias nis="npm install --save $1";
alias nid="npm install --save-dev $1";
alias nig="npm install -g $1";
alias nu="npm uninstall $1";
alias nug="npm uninstall -g $1";
alias ns="npm start";
alias nt="npm test";
alias nlr="npm config list registry"
alias nsdr="npm config set registry https://registry.npmjs.org/";
alias nup="npm unpublish $1";

# tmux aliases
alias tmux="tmux -u"; # Force tmux to support utf-8

# Utils aliases
function view_all_syslink -d "View all symlink in current directory"
  ls -al (npm root -g)
end

function nv -d "View latest version of provided npm package"
  npm view "$1" version
end

function nvs -d "View all version of provided npm package"
  npm view "$1" versions
end

function pg -d "Ping Google"
  echo 'Pinging Google' && ping www.google.com
end

function lip -d "Get Local IP Address"
  ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}' 
end

function killport -d "Kill a provided port"
  if test (count $argv) -eq 0
    echo "Please provide a port number !"
  else
    kill -kill "(lsof -t -i :$1)"
  end
end

function clean_node_modules -d "Deep cleaning node_modules :)"
  find . -name "node_modules" -type d -prune -exec rm -rf '{}' +
end

