# aliases
alias c="cd"
alias cl="clear";
alias sb="source ~/.bash_profile"; # Apply .bash_profile changes
alias vb="vim ~/.bash_profile"; # Open edit .bash_profile
alias d="cd ~/Documents"; # Go to Document folder
alias dt="cd ~/Desktop"; # Go to Desktop
alias dl="cd ~/Downloads"; # Go to Downloads
alias gh="cd ~/Documents/Github"; # Go to Github folder
alias pj="cd ~/Documents/Projects" # Go to Project folder
alias play="cd ~/Documents/Playground" # Go to Playground folder
alias nvimc="cd ~/.config/nvim" # Go to nvim config folder
alias rmf="rm -rf $1"; # Delete folder and everything inside it
alias ds="du -sh $1"; # Directory size
function mkd { mkdir $1 && cd $1 }; # Make dir and jump to created folder

# vscode aliases
alias code="code .";
alias cr="code . -r";

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
function gat { git tag -a "$1" -m "$2"};

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
function vasl { ls -al $(npm root -g); }; # View all syslink
function nv { npm view "$1" version; };
function nvs { npm view "$1" versions; };

# tmux aliases
alias tmux="tmux -u"; # Force tmux to support utf-8

# Utils aliases
function pg { echo 'Pinging Google' && ping www.google.com }; # Ping Google
function get_os {
  if [ "$(uname)" == "Darwin" ]; then
    echo "mac"
  elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo "linux"
  elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    echo "win32"
  elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    echo "win64"
  fi
};
function lip { # Get Local IP
  case $(get_os) in
    "linux")
      ip route get 8.8.8.8 | awk '{print $NF; exit}'
    ;;
    "mac")
      ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}' 
    ;;
    *)
      echo "Can't get local ip address"
    ;;
  esac
}
function kp { # Kill a port
  if [ $# == 0 ]; then
    echo "Please provide a port number !"
  else
    case $(get_os) in
      "linux")
        sudo kill `sudo lsof -t -i:$1`
      ;;
      "mac")
        kill -kill "$(lsof -t -i :$1)"
      ;;
      *)
        echo "Can't detect you device:" $OS
      ;;
    esac
  fi
}
function clean_node_modules {
  find . -name "node_modules" -type d -prune -exec rm -rf '{}' +
}
