function load_config
  cp config/config.fish $__fish_config_dir/.
end

function load_functions
  set dir $argv[1]
  for file in $dir/*.fish
    set func (basename $file .fish)
    echo "Loading function '$func' from file '$file'"
    source $file
    funcsave $func
  end
end

function make_default_shell
  chsh --shell (which fish)
end
