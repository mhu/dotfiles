sudo apt update

# Install Flatpak and add the Flathub repo
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install applications
sudo apt install -y curl exa feh fzf git hugo i3 inkscape parallel zsh
flatpak install -y flathub com.visualstudio.code com.discordapp.Discord org.signal.Signal com.spotify.Client md.obsidian.Obsidian

# Set up zsh
chsh -s /bin/zsh
ln -s ~/code/dotfiles/.zshrc ~/.zshrc

# Link config files
mkdir -p ~/.config/Code/User
ln -s ~/code/dotfiles/code/keybindings.json ~/.config/Code/User/keybindings.json
ln -s ~/code/dotfiles/code/settings.json ~/.config/Code/User/settings.json

mkdir -p ~/.config/{i3,nvim}
ln -s ~/code/dotfiles/i3/config ~/.config/i3/config
ln -s ~/code/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
