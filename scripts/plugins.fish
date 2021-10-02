function install_fisher
  curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
end

function download_fonts
  # Download fonts for tide.
  wget "https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_regular.ttf?raw=true" -O "MesloLGS NF Regular.ttf"
  wget "https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_bold.ttf?raw=true" -O "MesloLGS NF Bold.ttf"
  wget "https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_italic.ttf?raw=true" -O "MesloLGS NF Italic.ttf"
  wget "https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_bold_italic.ttf?raw=true" -O "MesloLGS NF Bold Italic.ttf"
end
