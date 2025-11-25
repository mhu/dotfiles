sudo pacman -Syu

if ! command -v yay >/dev/null 2>&1
then
  echo "Yay not found. Installing."
  sudo pacman -S --needed https://aur.archlinux.org/yay.git
  cd yay/
  makepkg -si
  cd ../
fi

sudo pacman -S fzf git go helix i3 lazygit magic-wormhole stow tailscale tldr zoxide zsh --noconfirm
yay -S deezer --noconfirm

stow .
mkdir ~/code
