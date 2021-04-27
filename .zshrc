export ZSH_DISABLE_COMPFIX=true
plugins=(git rails node ruby)
# Path to your oh-my-zsh installation.
export ZSH="/Users/hai/.oh-my-zsh"
export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_THEME=robbyrussell
source $ZSH/oh-my-zsh.sh
export EDITOR='nvim'
export TERM="xterm-256color"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH="/usr/local/opt/node@12/bin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:/usr/local/share/npm/bin:$PATH
export PATH="/usr/local/opt/postgresql@11/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$PATH:$(yarn global bin)"
export RBENV_ROOT=/usr/local/var/rbenv
export PATH="/usr/local/opt/ruby/bin:$PATH"
eval "$(rbenv init -)"

ctags=/usr/local/bin/ctags

setopt no_beep
setopt no_list_beep

alias bsl='brew services list'

alias tk-bo='cd ~/Project/Tokoin/BO/admin'
alias tk-pos='cd ~/Project/Tokoin/POS'

alias ezf='cd ~/Project/easy-game/'

alias wk-wk='cd ~/Project/1pac/wakuwaku'
alias wk-cms='cd ~/Project/1pac/wakuwaku-cms'

alias docker-up='cd ~/Project/Tokoin/BO/admin/tokoin_go_backend/dev-envs && docker-compose up -d && cd ../'
alias docker-stop='cd ~/Project/Tokoin/BO/admin/tokoin_go_backend/dev-envs && docker-compose stop && cd ../'

alias bo-web-deploy='cd ~/Project/Tokoin/deploy_util_staging/bo_web && ./deploy.sh'
alias cls='clear'

# source /Users/moon.hai/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="$PATH:above/path/to/gems"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/usr/local/opt/python@3.8/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/hai/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/hai/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/hai/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/hai/google-cloud-sdk/completion.zsh.inc'; fi

[[ -s "/Users/hai/.gvm/scripts/gvm" ]] && source "/Users/hai/.gvm/scripts/gvm"
export GO_PATH=$HOME/go
export PATH=$PATH:/$GO_PATH/bin
export GOPATH=$HOME/go
export PATH=$PATH:/$GOPATH/bin
export GOSUMDB=off
export GOARCH="amd64"
export GOBIN=$GOPATH/bin
export GO111MODULE=on
export PATH="$PATH:/.cargo/env"
export CARGO_NET_GIT_FETCH_WITH_CLI=true
export PATH="$HOME/.phpenv/bin:$PATH"
eval "$(phpenv init -)"
#export PATH=$PATH:$HOME/.pub-cache/bin
export PATH=$PATH:$HOME/fvm/default/bin
export PATH=$PATH:~/.android-sdk-macosx/platform-tools/
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/lib/node_modules/testrpc:$PATH"
