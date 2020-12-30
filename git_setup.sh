#!/bin/bash

echo "Setting up git config..."

# git config --global user.email "marc.dostie@gmail.com"
# git config --global user.name "Marc Dostie"
git config --global color.ui "true"
git config --global alias.s "status"
git config --global alias.l "log --oneline --graph --pretty=format:\"%C(auto)%h %d %s [%C(dim white)(%cr) %cn%C(reset)]\" --all"
git config --global alias.co "checkout"
git config --global core.editor "vim"

echo "Be sure to set up your git_clean_branches.sh script and add to PATH"
