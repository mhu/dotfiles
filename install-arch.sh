# update pacman
sudo pacman -Syu

# install Yay
if ! command -v yay >/dev/null 2>&1
then
  sudo pacman -S --needed https://aur.archlinux.org/yay.git
  cd yay/
  makepkg -si
fi

# install tools
sudo pacman -S fzf git go helix i3 lazygit magic-wormhole stow tailscale tldr zoxide zsh
