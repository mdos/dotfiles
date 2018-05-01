#!/bin/bash

echo "Installing Node Version Manager (nvm)..."
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash

# check that .bash_profile doesn't need to be updated here


# List versions of node installed:      nvm -ls
# Install a version of node:            nvm install v8.9.1
# Set default version for use:          nvm alias default v8.9.1
# Set node version per project:         nvm use v6.11.3
# Uninstall older versions:             nvm uninstall v8.9.0


