#!/usr/bin/env bash

# Install required dependencies.
sudo apt-get update \
  && sudo apt-get install -y \
    software-properties-common

# Install latest fish shell.
sudo add-apt-repository ppa:fish-shell/release-3 \
  && sudo apt-get update \
  && sudo apt-get install -y \
    fish

# Run interactive fish script.
fish --login --interactive ubuntu/run.fish
