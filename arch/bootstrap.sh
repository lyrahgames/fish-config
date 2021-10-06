#!/usr/bin/env bash

# Install fish shell.
sudo pacman -Sy --needed --noconfirm fish

# Run interactive fish script.
fish --login --interactive arch/run.fish
