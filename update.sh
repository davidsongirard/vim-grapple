#!/bin/bash

# LINKS CONTENTS OF COMPONENTS TO VIM DIRECTORY FOR PROCESSING
cd ~
rm -rf .vim
ln -s ~/vim-grapple/components/ .vim
