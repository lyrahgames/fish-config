source scripts/scripts.fish

function install_requirements
  sudo pacman -Sy --needed --noconfirm \
    which wget curl bat fzf fd fontconfig
end
