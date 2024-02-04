# zsh completion
autoload -Uz compinit
compinit

# save history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

source ~/code/dotfiles/aliases.sh
source ~/code/dotfiles/prompt.sh
source ~/code/dotfiles/custom_functions.sh
