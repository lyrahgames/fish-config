# Install required dependencies.
sudo apt-get update \
  && sudo apt-get install -y \
    wget curl bat fzf fd-find

# Install latest fish shell.
sudo apt-add-repository ppa:fish-shell/release-3 \
  && sudo apt-get update \
  && sudo apt-get install -y \
    fish

# Run interactive fish script.
fish --interactive scripts/run.fish
