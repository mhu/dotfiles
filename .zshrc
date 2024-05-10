# enable p10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

export PATH="$PATH:/usr/local/bin/zig"

# load p10k
source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
