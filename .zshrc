HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

export TERMINAL=kitty
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

exec --no-startup-id xset r rate 200

eval "$(zoxide init zsh --cmd cd)"

bindkey "^[[3~" delete-char
