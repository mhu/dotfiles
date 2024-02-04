autoload -U colors && colors
setopt PROMPT_SUBST

function git_branch() {
    local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)

    if [ -n "$branch" ]; then
        echo "[%F{#81A1C1}$branch%f] "
    fi
}

PROMPT='%F{#5E81AC}%~%f $(git_branch)%F{#88C0D0}›%f '
RPROMPT='%F{#BF616A}%?%f'
