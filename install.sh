#!/bin/sh
set -eo pipefail

DOTFILES_REPO="https://github.com/mhu/dotfiles.git"
DOTFILES_DIR="$HOME/.dotfiles"

check_os() {
  if [ ! -f /etc/arch-release ]; then
    echo "This script is designed for Arch Linux. Stopping."
    exit 1
  fi
}

clone_dotfiles() {
  if [ -d "$DOTFILES_DIR" ]; then
    echo "Dotfiles directory already exists. Pulling latest changes."
    cd "$DOTFILES_DIR"
    git pull
  else
    git clone "$DOTFILES_REPO" "$DOTFILES_DIR"
    echo "Dotfiles cloned successfully."
  fi
}

install_packages() {
  sudo pacman -Syu --noconfirm

  if ! command -v yay >/dev/null 2>&1; then
    echo "Yay not found. Installing."
    sudo pacman -S --needed --noconfirm git base-devel
    cd /tmp
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd "$HOME"
    rm -rf /tmp/yay
  fi

  yay -S --needed --noconfirm $(cat "$DOTFILES_DIR/tools.txt")

  echo "Packages installed successfully."
}

apply_dotfiles() {
  cd "$DOTFILES_DIR"

  stow -v .

  echo "Dotfiles applied."
}

main() {
  check_os
  clone_dotfiles
  install_packages
  apply_dotfiles
}

main
