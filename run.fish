#!/usr/bin/env fish

set fish_config_dir $HOME/.config/fish

# Create fish configuration folder if it not already exists.
mkdir -p fish_config_dir

echo "Installing custom configuration"
cp config.fish $fish_config_dir/

echo "Installing custom autoloading functions"
cp functions/*.fish $fish_config_dir/functions/

echo "Installing fisher package manager"
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
echo "Fulfilling requirements for additional plugins"
sudo pacman -Sy --needed --noconfirm bat fzf fd # Needed for fzf.fish
echo "Copying fisher plugins file"
cp fish_plugins $fish_config_dir/
echo "Syncing plugins by using fisher"
fisher update

echo "Setting fish as default shell"
chsh -s /usr/bin/fish

if status is-interactive
  exit
end
