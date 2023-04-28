sudo apt update
sudo apt install -y curl exa feh fzf git i3 inkscape neovim net-tools pkg-config tmux zsh
sudo snap install code discord flutter signal-desktop spotify

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

echo "Install rust using rustup: https://www.rust-lang.org/tools/install"
