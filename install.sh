#!/usr/bin/env bash
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
