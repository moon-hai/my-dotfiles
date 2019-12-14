plugins=(git rails node ruby)

# Path to your oh-my-zsh installation.
export ZSH="/Users/moon.hai/.oh-my-zsh"
export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_THEME=agnoster
source $ZSH/oh-my-zsh.sh
export EDITOR='vim'
export TERM="xterm-256color"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH="/usr/local/opt/node@10/bin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:/usr/local/share/npm/bin:$PATH
eval "$(anyenv init -)"
export PATH="$HOME/.anyenv/bin:$PATH"
export PATH="/usr/local/opt/postgresql@11/bin:$PATH"
eval "$(nodenv init -)"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

ctags=/usr/local/bin/ctags

setopt no_beep
setopt no_list_beep
