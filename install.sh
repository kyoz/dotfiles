# Auto update dotfiles

# Utils scripts
. ./scripts/utils

# Dotfiles paths
BASH_PROFILE_PATH=~/.bash_profile
GIT_CONFIG_PATH=~/.gitconfig
ZSH_PATH=~/.zshrc

# Update .bash_profile
if [ $(is_file_exist $BASH_PROFILE_PATH) -eq "1" ]; then
  echo "Updated .bash_profile"
  cp .bash_profile $BASH_PROFILE_PATH
else
  echo "Not exist .bash_profile. Can't update !" 
fi

# Update .gitconfig
if [ $(is_file_exist $GIT_CONFIG_PATH) -eq "1" ]; then
  echo "Updated .bash_profile"
  cp .gitconfig $GIT_CONFIG_PATH
else
  echo "Not exist .bash_profile. Can't update !" 
fi

# Update .zshrc
if [ $(is_file_exist $ZSH_PATH) -eq "1" ]; then
  echo "Updated .zshrc"
  cp .zshrc $ZSH_PATH
else
  echo "Not exist .zsh. Can't update !" 
fi

