#!/usr/bin/env bash

# Make sure to set current directory to repository root.
cd `git rev-parse --show-toplevel`

# Install required dependencies.
sudo pacman -Sy --needed --noconfirm \
  fish which wget curl bat fzf fd

# Run interactive fish script.
fish --interactive scripts/run.fish
