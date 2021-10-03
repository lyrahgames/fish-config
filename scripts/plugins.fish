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

function install_fonts
  set user_font_dir $HOME/.local/share/fonts
  mkdir -p $user_font_dir

  set file "$user_font_dir/MesloLGS NF Regular.ttf"
  if ! test -f $file
    echo "Installing '$file'"
    wget -q "https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_regular.ttf?raw=true" -O $file
  end

  set file "$user_font_dir/MesloLGS NF Bold.ttf"
  if ! test -f $file
    echo "Installing '$file'"
    wget -q "https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_bold.ttf?raw=true" -O $file
  end

  set file "$user_font_dir/MesloLGS NF Italic.ttf"
  if ! test -f $file
    echo "Installing '$file'"
    wget -q "https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_italic.ttf?raw=true" -O $file
  end

  set file "$user_font_dir/MesloLGS NF Bold Italic.ttf"
  if ! test -f $file
    echo "Installing '$file'"
    wget -q "https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_bold_italic.ttf?raw=true" -O $file
  end

  fc-cache $user_font_dir
end
