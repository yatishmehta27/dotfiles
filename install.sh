#!/usr/bin/env bash
echo "Copying files from repo to $HOME"
cp ./gitconfig ~/.gitconfig
cp ./irbrc ~/.irbrc
cp ./zshrc ~/.zshrc
cp ./pryrc ~/.pryrc
cp ./gemrc ~/.gemrc
cp ./aliases ~/.aliases
echo "Copied gitconfig zshrc irbrc gemrc pryrc aliases"

