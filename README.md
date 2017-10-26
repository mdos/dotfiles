# dotfiles

See [Using Git and Github to Manage Your Dotfiles](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/)

## Files
* setup.sh : Simple script to install symlinks
* vimrc    : A vimrc suitable for symlinking to ~/.vimrc
* screenrc : A config file for GNU screen

## Symlinks
If it seems odd that your git repo under *dotfiles* is changing whenever you
change your .screenrc or .vimrc, it's because the files under the $HOME
directory are symlinked to the files from the repo dir.


