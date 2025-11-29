# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

export VISUAL=helix
export EDITOR=helix

alias cdtemp='cd $(mktemp -d)'
alias hx='helix'
alias ll='ls -al'
alias mkdir='mkdir -pv'
alias rm='rm -i'
alias gs='git status'
alias gd='git diff'
alias gds='git diff --staged'
alias gp='git pull'
alias history='history 1'
alias open='xdg-open'
alias lg='lazygit'

xset r rate 200

eval "$(zoxide init zsh --cmd cd)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

bindkey "^[[3~" delete-char
