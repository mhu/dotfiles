# zsh completion
autoload -Uz compinit
compinit
setopt PROMPT_SUBST

# aliases
alias ll='ls -alv --color=auto'
alias cdtemp='cd $(mktemp -d)'
alias reload='source ~/.zshrc'
alias mkdir='mkdir -pv'
alias rm='rm -i'
alias history='history | less'

function git_branch() {
    local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    if [ -n "$branch" ]; then
        echo "%F{green}$branch%f "
    fi
}

# prompt
autoload -U colors && colors
PROMPT='%F{yellow}%~%f $(git_branch)%F{cyan}›%f '
RPROMPT='%F{red}%?%f'

# enable word skipping with Ctrl + left and right arrow keys
bindkey '\e[1;5D' backward-word
bindkey '\e[1;5C' forward-word
