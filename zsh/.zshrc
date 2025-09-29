export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export ZSH=$HOME/.oh-my-zsh
export PATH="$PATH:/opt/nvim-linux64/bin"

ZSH_THEME="eastwood"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

eval "$(zoxide init zsh)"
source /usr/share/nvm/init-nvm.sh

# bun completions
[ -s "/home/andre/.bun/_bun" ] && source "/home/andre/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

alias ni="npm install"
alias nr="npm run"

alias ns="npm start"
alias nb="npm run build"

alias dps="docker ps"  # Показать запущенные контейнеры
alias dpa="docker ps -a"  # Показать все контейнеры
alias di="docker images"  # Показать доступные образы
alias drm="docker rm $(docker ps -a -q)"  # Удалить все остановленные контейнеры
alias drmi="docker rmi $(docker images -q)"  # Удалить все образы

alias ll="ls -alF"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias h="history"

alias c="clear"
alias gst="git status"
alias gp="git pull"
alias gcm="git commit -m"

alias ga="git add ."
alias gl="git log"

alias v="nvim"
alias vim="nvim"

alias lg="lazygit"
