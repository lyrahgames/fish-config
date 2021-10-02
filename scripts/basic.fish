function copy
  set src_dir $argv[1]
  set out_dir $argv[2]
  echo "Copying \"$src_dir\" to \"$out_dir\""
  mkdir -p $out_dir
  cp -R $src_dir/* $out_dir
end
