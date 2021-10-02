#!/usr/bin/env fish

# Fulfill system package requirements.
sudo pacman -Sy --needed --noconfirm which wget bat fzf fd

# Variables
set fish_config_dir $HOME/.config/fish

# Create fish configuration folder if it not already exists.
mkdir -p fish_config_dir

echo "Installing custom configuration" \
  && cp config.fish $fish_config_dir/

echo "Installing custom autoloading functions" \
  && mkdir -p $fish_config_dir/functions \
  && cp functions/*.fish $fish_config_dir/functions/

# Handle additional plugins.
# Install fisher package manager.
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
echo "Copying fisher plugins file" \
  && cp fish_plugins $fish_config_dir/
# Sync plugins by using fisher.
fisher update

# Set fish as default shell.
chsh -s (which fish)

# Download fonts for tide.
wget "https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_regular.ttf?raw=true" -O "MesloLGS NF Regular.ttf"
wget "https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_bold.ttf?raw=true" -O "MesloLGS NF Bold.ttf"
wget "https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_italic.ttf?raw=true" -O "MesloLGS NF Italic.ttf"
wget "https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_bold_italic.ttf?raw=true" -O "MesloLGS NF Bold Italic.ttf"

echo "Consider install the downloaded fonts next for use in Tide prompt."

if status is-interactive
  exit
end
