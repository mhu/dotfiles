# zsh completion
autoload -Uz compinit
compinit

# aliases
alias history='history | less'
alias cdtemp='cd $(mktemp -d)'
alias ll='ls -alv --color=auto'
alias mkdir='mkdir -pv'
alias reload='source ~/.zshrc'
alias rm='rm -i'

# prompt
autoload -U colors && colors
setopt PROMPT_SUBST

function git_branch() {
    local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    if [ -n "$branch" ]; then
        echo "%F{#81A1C1}$branch%f "
    fi
}

PROMPT='%F{#5E81AC}%~%f $(git_branch)%F{#88C0D0}›%f '
RPROMPT='%F{#BF616A}%?%f'

# enable word skipping with Ctrl + left and right arrow keys
bindkey '\e[1;5D' backward-word
bindkey '\e[1;5C' forward-word
