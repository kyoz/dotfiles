#!/bin/bash
set -e pipefail

# tput colors
BLACK=0
RED=1
GREEN=2
BLUE=4
WHITE=7

# make text have cool color 
function log {
  tput setaf $GREEN; echo -e $1 "✔";
}

function error {
  tput setaf $RED; echo -e $1 "✘"
}


# check if a file is exists
# 1: exist | 0: not exist
function is_file_exist {
  local exist=0
  if [ -f $1 ]; then
     local exist=1
  fi
  echo "$exist"
}

# check if a package is installed
# 1: installed | 0: not yet
function is_package_installed {
  local exist=1
  npm list -g --depth=1 --silent | grep $1 >/dev/null 2>&1 || { local exist=0; }
  echo "$exist"
}
