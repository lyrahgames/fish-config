#!/usr/bin/env bash

# Install required dependencies.
sudo apt-get -yq update
sudo apt-get -yq install \
  software-properties-common

# Install latest fish shell.
sudo add-apt-repository -y \
  ppa:fish-shell/release-3
sudo apt-get -yq update
sudo apt-get -yq install \
  fish

# Run interactive fish script.
fish --login --interactive ubuntu/run.fish
