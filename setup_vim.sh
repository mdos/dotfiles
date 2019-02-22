#!/bin/bash

echo "Downloading VIM packages..."

echo -n "Setting up pathogen..."
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo " done."

echo -n "Setting up colorscheme..."
mkdir -p ~/.vim/colors && cd ~/.vim/colors
wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src=13400
cd ~/.vim/bundle
git clone https://github.com/altercation/vim-colors-solarized.git
echo " done."

echo -n "Setting up powerline..."
cd ~/.vim/bundle
git clone https://github.com/Lokaltog/vim-powerline.git
echo " done."

echo -n "Setting up ctrl-p..."
cd ~/.vim/bundle
git clone https://github.com/kien/ctrlp.vim.git
echo " done."

echo -n "Setting up jedi-vim..."
cd ~/.vim/bundle
git clone https://github.com/davidhalter/jedi-vim.git
echo " done."

echo "Done."

