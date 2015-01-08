#!/usr/bin/env bash
git clone https://github.com/yatish27/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

echo "Copying files from repo to $HOME"
cp ./gitconfig ~/.gitconfig
cp ./irbrc ~/.irbrc
cp ./zshrc ~/.zshrc
cp ./pryrc ~/.pryrc
cp ./gemrc ~/.gemrc
cp ./rspec ~/.rspec
cp ./vimrc ~/.vimrc
cp ./vimrc.bundles ~/.vimrc.bundles
echo "Copied gitconfig zshrc irbrc gemrc pryrc aliases vimrc"

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +BundleInstall +qall
echo "Yatish's vim setup done"

cd ~
rm -rf ~/.dotfiles

