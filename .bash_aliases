# aliases
alias c="cd"
alias cl="clear";
alias sb="source ~/.bash_profile";
alias vb="vim ~/.bash_profile";
alias d="cd ~/Documents";
alias gh="cd ~/Documents/Github";
alias pj="cd ~/Documents/Projects"
alias dt="cd ~/Desktop";
alias rmf="rm -rf $1";
alias ds="du -sh $1"; # Directory size
function mkd { mkdir $1 && cd $1 };

# code aliases
alias code="code .";
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
alias gco="git co $1";
alias gbr="git br -va";
alias grmt="git remote -v";
alias gt="git tag";
function gat { git tag -a "$1" -m "$2"};
alias gtpush="git push origin $1";
alias gtdel="git tag -d $1 && git push --delete origin $1";

# npm aliases
alias nck="npm-check-updates";
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
alias ndr="npm config set registry https://registry.npmjs.org/";
alias np="npm publish";
alias nup="npm unpublish $1";
function nsl { ls -al $(npm root -g); }; # View all syslink
function nv { npm view "$1" version; };
function nvs { npm view "$1" versions; };
