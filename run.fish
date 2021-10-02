#!/usr/bin/env fish

set fish_config_dir $HOME/.config/fish

# Create fish configuration folder if it not already exists.
mkdir -p fish_config_dir

# Install custom configuration.
cp config.fish $fish_config_dir/

# Install custom functions.
cp functions/*.fish $fish_config_dir/functions/

# Install fisher package manager.
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
# Fulfill requirements for additional plugins.
sudo pacman -Sy --needed --noconfirm bat fzf fd # Needed for fzf.fish
# Copy fisher plugins file.
cp fish_plugins $fish_config_dir/
# Sync plugins by using fisher.
fisher update

# Set fish as default shell.
chsh -s /usr/bin/fish
