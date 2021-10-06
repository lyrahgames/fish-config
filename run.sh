#!/usr/bin/env bash

# Make sure to set current directory to repository root.
dir=$(pwd)
cd `dirname "$0"`

# Get environment variables to identify distributions
# by reading '/etc/os-release' file.
source /etc/os-release

# Run OS-specific installation script.
if [ "$ID" == "arch" ]; then
  echo "Running bootstrap for Arch Linux"
  arch/bootstrap.sh
elif [ "$ID" == "ubuntu" ]; then
  echo "Running bootstrap for Ubuntu"
  ubuntu/bootstrap.sh
else
  echo "Operating system or Linux distribution is not supported."
  echo "Install fish and the required dependencies manually."
fi

# Change back to old directory.
cd $dir
