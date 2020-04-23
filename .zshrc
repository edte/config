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
