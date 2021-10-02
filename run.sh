#!/usr/bin/env bash

# Fullfill fish shell dependency.
sudo pacman -S --needed --noconfirm fish
# Run the fish script interactively to directly set up plugins.
fish run.fish
