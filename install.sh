sudo apt update

# Install Flatpak and add the Flathub repo
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install applications
sudo apt install -y curl exa feh fzf git hugo i3 inkscape parallel polybar zsh
flatpak install -y flathub com.visualstudio.code com.discordapp.Discord org.signal.Signal com.spotify.Client md.obsidian.Obsidian

# Set up zsh
chsh -s /bin/zsh
ln -s ~/code/dotfiles/.zshrc ~/.zshrc

# Link config files
mkdir -p ~/.var/app/com.visualstudio.code/config/Code/User
ln -s ~/code/dotfiles/code/keybindings.json ~/.var/app/com.visualstudio.code/config/Code/User/keybindings.json
ln -s ~/code/dotfiles/code/settings.json ~/.var/app/com.visualstudio.code/config/Code/User/settings.json

mkdir -p ~/.config/{i3,polybar}
ln -s ~/code/dotfiles/i3/config ~/.config/i3/config
ln -s ~/code/dotfiles/polybar/launch.sh ~/.config/polybar/launch.sh
ln -s ~/code/dotfiles/polybar/config.ini ~/.config/polybar/config.ini

# Next steps
echo "Set the initial wallpaper with `feh --bg-center /path/to/the/wallpaper.png`"
