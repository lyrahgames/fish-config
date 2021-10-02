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
  echo "Ubuntu Distribution"
  source ubuntu/run.sh
else
  echo "Operating system or Linux distribution is not supported."
fi
