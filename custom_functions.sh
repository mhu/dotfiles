# enable word skipping with (Ctrl + left, Ctrl + right)
bindkey '\e[1;5D' backward-word
bindkey '\e[1;5C' forward-word

# enable cd with fzf (Ctrl + f)
function cd_fzf() {
    cd $(find ~ -type d -print | fzf --height=20)
    zle reset-prompt
}
zle -N cd_fzf
bindkey '^f' cd_fzf
