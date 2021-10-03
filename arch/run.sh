# Install required dependencies.
sudo pacman -Sy --needed --noconfirm \
  fish which wget curl bat fzf fd fontconfig

# Run interactive fish script.
fish --interactive scripts/run.fish
