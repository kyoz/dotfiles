# Default
set -x LANG en_US.UTF-8

# Paths
set PATH $PATH (du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')

# Default App
set -x TERM xterm-256color
set -x EDITOR nvim
set -x TERMINAL iterm2
set -x BROWSER safari
set -x FILE nnn

# Android
set -x ANDROID_HOME ~/.android/Sdk
set -x ANDROID_SDK_ROOT ~/.android/Sdk
set PATH $PATH $ANDROID_HOME/emulator
set PATH $PATH $ANDROID_HOME/tools
set PATH $PATH $ANDROID_HOME/tools/bin
set PATH $PATH $ANDROID_HOME/platform-tools
set PATH $PATH ~/.gradle/bin

