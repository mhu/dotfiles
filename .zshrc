# zsh completion
autoload -Uz compinit
compinit

# aliases
alias cdtemp='cd $(mktemp -d)'
alias fzff='fzf --preview="cat {}"'
alias ll='exa -al'
alias mkdir='mkdir -pv'
alias nix-update="nix-channel --update && nix-env -iA$1"
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

function cd_fzf() {
    cd $(find ~ -type d -print | fzf --height=20)
    zle reset-prompt
}
zle -N cd_fzf
bindkey '^f' cd_fzf

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
