# Install required dependencies.
sudo apt-get update \
  && sudo apt-get install -y \
    software-properties-common wget curl bat fzf fd-find fontconfig

# Install latest fish shell.
sudo add-apt-repository ppa:fish-shell/release-3 \
  && sudo apt-get update \
  && sudo apt-get install -y \
    fish

# Set Ubuntu-specific aliases for commands.
fish ubuntu/alias.fish
# Run interactive fish script.
fish --interactive scripts/run.fish
