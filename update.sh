#!/bin/bash

# Links contents of components to the .vim directory 
cd ~
rm -rf .vim
ln -s ~/vim-grapple/components/ .vim

# Overwrite the vimrc file to use our vimrc file instead
echo '" Do not alter or vim-grapple will no longer function' > ~/.vimrc
echo 'source ~/vim-grapple/configuration/vimrc.vim' >> ~/.vimrc
