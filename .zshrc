# Path to your oh-my-zsh installation.
export ZSH=/Users/moon-hai/.oh-my-zsh
ZSH_THEME=agnoster
source $ZSH/oh-my-zsh.sh
export EDITOR='vim'
export TERM="xterm-256color"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=“/usr/local/opt/node@6/bin:$PATH”
export PATH=$HOME/bin:/usr/local/bin:/usr/local/share/npm/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$HOME/.phpenv/bin:$PATH"
eval "$(phpenv init -)"
export PATH=/usr/local/php5/bin:$PATH
export PATH="/usr/local/opt/openssl/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH=~/Project/flutter/bin:$PATH
export PATH="$HOME/Android/tools:$PATH"
export PATH="$HOME/Android/platform-tools:$PATH"
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"

plugins=(git sublime rails npm node bundler gem)

setopt no_beep
setopt no_list_beep

alias ll="pwd; ls -la"
alias vz="vim ~/.zshrc"
alias vrc="vim ~/.vimrc"
