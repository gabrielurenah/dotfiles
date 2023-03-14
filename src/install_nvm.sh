#!/bin/bash

# Download and run the nvm installation script
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Restart the terminal
exec $SHELL

# Install the latest LTS version of Node.js
nvm install --lts

