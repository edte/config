export ZSH="/home/edte/.oh-my-zsh"
ZSH_THEME="ys"
# plugins
plugins=(
  zsh-history-substring-search
  sudo
  git
  web-search
  extract
  zsh-autosuggestions
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh
eval "$(lua /home/edte/.oh-my-zsh/plugins/z.lua/z.lua  --init zsh)"
eval $(thefuck --alias)


alias setproxy="export ALL_PROXY=socks5://127.0.0.1:1080"
alias unsetproxy="unset ALL_PROXY"
alias getip="curl -i httpbin.org/get"
alias install='sudo pacman -S'
alias remove='sudo pacman -Rs'
alias upgrade='sudo pacman -Syu'
