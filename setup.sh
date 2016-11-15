#!/bin/bash

#
# Sets up your env with the .vimrc and .bashrc symlinked from
# the files in this repo.
#
# Note: This script won't work if you haven't cloned the git repo
# to ~/dotfiles.
#
DIR=~/dotfiles
OLDDIR=~/dotfiles_old
FILES="bashrc vimrc vim"        # list of files to symlink

echo -n "Creating $OLDDIR for backup... "
mkdir -p $OLDDIR
echo "done."

cd $DIR

for file in $FILES; do
    echo -n "Moving .$file to $OLDDIR... "
    mv ~/.$file $OLDDIR
    echo "done."
    echo -n "Creating symlink to $file in $HOME... "
    ln -s $DIR/$file ~/.$file
    echo "done."
done


