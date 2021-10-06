source scripts/scripts.fish

function install_requirements
  sudo apt-get -yq update
  sudo apt-get -yq install \
    wget curl bat fzf fd-find fontconfig
end
