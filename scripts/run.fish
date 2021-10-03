source scripts/basic.fish
source scripts/plugins.fish

make_default_shell
load_config
load_functions config/functions

install_plugins
# Fonts for Tide Prompt
download_fonts
echo "INFO: Install downloaded fonts for correct functioning of Tide prompt."

if status is-interactive
  exit
end
