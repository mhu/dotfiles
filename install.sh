#!/bin/bash

# package manager
sh <(curl -L https://nixos.org/nix/install) --daemon

NIXPKGS_ALLOW_UNFREE=1 nix-env -iA nixpkgs.android-studio \
    nixpkgs.curl \
    nixpkgs.discord \
    nixpkgs.docker \
    nixpkgs.exa \
    nixpkgs.feh \
    nixpkgs.firefox \
    nixpkgs.fzf \
    nixpkgs.git \
    nixpkgs.go \
    nixpkgs.hugo \
    nixpkgs.i3 \
    nixpkgs.nettools \
    nixpkgs.obsidian \
    nixpkgs.parallel \
    nixpkgs.python3 \
    nixpkgs.signal-desktop \
    nixpkgs.spotify \
    nixpkgs.vscode \
    nixpkgs.zoom-us \
    nixpkgs.zsh

mkdir ~/code

# dotfiles
git clone https://github.com/mhu/dotfiles.git ~/code/dotfiles

# zsh
chsh -s /bin/zsh
ln -s ~/code/dotfiles/.zshrc ~/.zshrc

# link config files
mkdir -p ~/.config/{i3,nvim,Code/User}
ln -s ~/code/dotfiles/code/keybindings.json ~/.config/Code/User/keybindings.json
ln -s ~/code/dotfiles/code/settings.json ~/.config/Code/User/settings.json
ln -s ~/code/dotfiles/i3/config ~/.config/i3/config
ln -s ~/code/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
