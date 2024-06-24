# zsh completion
autoload -Uz compinit
compinit

# save history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

source ~/aliases.sh
source ~/custom_functions.sh

eval "$(starship init zsh)"
