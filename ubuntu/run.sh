# Install required dependencies.
sudo apt update \
  && sudo apt install \
    fish wget curl bat fzf fd-find

# Run interactive fish script.
fish --interactive scripts/run.fish
