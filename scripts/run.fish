source scripts/basic.fish
source scripts/plugins.fish

make_default_shell
load_config
load_functions config/functions

install_plugins
install_fonts

if status is-interactive
  exit
end
