#####################################
# filename: .zshrc
# description: .zshrc configuration for @zyshara
#####################################

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
alias nv="nvim"

# Default Editor
export EDITOR="vim"
export VISUAL="vim"

# RVM
export PATH=$PATH:$HOME/.rvm/bin

# 256 Color Terminal
export TERM="xterm-256color"

# History Settings
HISTFILE=~/.history
HISTSIZE=1000000

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
