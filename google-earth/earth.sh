#!/bin/bash

# Error function
function error {
  echo -e "\\e[91m$1\\e[39m"
  exit 1
}

# If chromium does not exist on the system, it will automatically install
if [ ! `which chromium-browser` ]; then
  sudo apt-get update || error "sudo apt update failed!"
  sudo apt-get install -y chromium-browser || error "Installing chromium-browser with APT failed!"
fi

# Launch Earth
chromium-browser %U --user-agent="Mozilla/5.0 (X11; CrOS armv7l 11895.95.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.125 Safari/537.36" --app=https://earth.google.com/web/wasm || error "Failed to launch Google Earth!"
