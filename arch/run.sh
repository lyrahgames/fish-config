# Install required dependencies.
sudo pacman -Sy --needed --noconfirm \
  fish which wget curl bat fzf fd

# Run interactive fish script.
fish --interactive scripts/run.fish
