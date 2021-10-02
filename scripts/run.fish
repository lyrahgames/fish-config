source scripts/plugins.fish
source scripts/basic.fish
source scripts/default.fish

install_plugins

# Copy configuration to destination.
copy (pwd)/config $HOME/.config/fish

# Set fish as default shell.
make_default

# Fonts for Tide Prompt
download_fonts
echo "INFO: Install downloaded fonts for correct functioning of Tide prompt."

if status is-interactive
  exit
end
