#!/usr/bin/env bash

# Make sure to set current directory to repository root.
cd `dirname "$0"`

# Get environment variables to identify distributions
# by reading '/etc/os-release' file.
source /etc/os-release

if [ "$ID" == "arch" ]; then
  echo "Arch Linux Distribution"
  source arch/run.sh
elif [ "$ID" == "ubuntu" ]; then
    echo "Ubuntu is not yet supported."
else
    echo "Shitty system. Fuck you."
fi
