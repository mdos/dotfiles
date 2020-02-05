# dotfiles

See [Using Git and Github to Manage Your Dotfiles](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/)

## Files
* setup.sh     : Simple script to install symlinks
* setup_vim.sh : Installs a bunch of vim packages (via pathogen)
* git_setup.sh : Sets up some global config
* vimrc        : A vimrc suitable for symlinking to ~/.vimrc
* screenrc     : A config file for GNU screen

## Symlinks
If it seems odd that your git repo under *dotfiles* is changing whenever you
change your .screenrc or .vimrc, it's because the files under the $HOME
directory are symlinked to the files from the repo dir.

=======
## Installation
Run setup.sh
Run setup_vim.sh
Run git_setup.sh

TODO:
* Fix node version (make sure it's linking to what you _think_ it's linking to
* Consider reworking the script sourcing to incorporate all scripts in a
  certain dir instead of specifically calling them out
* Consider merging these scripts to make a single script install possible
* Add brew setup
* Add nvm for node
* For yarn, do not install via brew. It will pull in brew's node.
  https://yoember.com/nodejs/the-best-way-to-install-node-js-with-yarn/
  install yarn from npm globally, then install yarn using yarn, then remove
  yarn from npm global so it's on it's own.
  Use yarn and only yarn:
    $ nvm install 10
    $ npm i -g yarn
    $ yarn global add yarn
    $ npm rm -g yarn
    $ npm rm -g npm
* Add python3

