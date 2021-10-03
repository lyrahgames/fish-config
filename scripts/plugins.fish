function install_fisher
  curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
end

function sync_plugins
  cp config/fish_plugins $__fish_config_dir/.
  fisher update
end

function install_plugins
  install_fisher
  sync_plugins
end

function download_fonts
  # Download fonts for tide.
  wget -q "https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_regular.ttf?raw=true" -O "MesloLGS NF Regular.ttf"
  wget -q "https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_bold.ttf?raw=true" -O "MesloLGS NF Bold.ttf"
  wget -q "https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_italic.ttf?raw=true" -O "MesloLGS NF Italic.ttf"
  wget -q "https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_bold_italic.ttf?raw=true" -O "MesloLGS NF Bold Italic.ttf"
end
