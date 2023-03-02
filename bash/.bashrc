# env
export EDITOR=nano
export VISUAL=$EDITOR

# aliases
alias ll="ls -alF"
alias cdtemp="cd $(mktemp -d)"

# custom prompt
export GIT_PS1_SHOWDIRTYSTATE=1
PS1="\u@\h \w$(__git_ps1 " (%s)") ⬡ "
