# # # # # # #
#
# # # # # # #


# Init prompt
autoload -U promptinit
promptinit

# Use zprezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Aliasing
alias l="ls -al"
alias rm="rm -f"

# Default Editor
export EDITOR="vim"
export VISUAL="vim"

# Default PATH
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin
export PATH=$PATH:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

# RVM
export PATH=$PATH:$HOME/.rvm/bin

# 256 Color Terminal
export TERM="xterm-256color"

# History Settings
HISTFILE=~/.history
HISTSIZE=1000000

# Dircolors
if ! [[ $OSTYPE == "darwin"* ]] then
    eval `dircolors ~/.dircolors`
fi

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
