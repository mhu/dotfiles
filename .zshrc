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

xset r rate 200

eval "$(starship init zsh)"
eval "$(zoxide init zsh --cmd cd)"
