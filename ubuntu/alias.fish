for file in ubuntu/functions/*.fish
  set func (basename $file .fish)
  source $file
  funcsave $func
end
