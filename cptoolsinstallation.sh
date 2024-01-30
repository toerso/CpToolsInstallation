#!/bin/bash

#update package
sudo apt-get update

#Alacritty installation:
#Adding ppa
sudo add-apt-repository ppa:aslatter/ppa -y
#Install Alacritty
sudo apt install alacritty

#Installing Vim
sudo apt-get install vim -y

#Git installation
sudo apt-get install git -y

#Clone Vim Configuration
git clone https://github.com/toerso/VimConfig ~/Dropbox/

#Install Vim Package Manager 'Vundle'
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo 'export VIMINIT="source ~/Dropbox/VimConfig/.vimrc"' >> ~/.bashrc
echo 'alias vim="vim -u ~/Dropbox/VimConfig/.vimrc"' >> ~/.bashrc

#Install Vim Plugin
vim ~/Dropbox/VimConfig/promt.txt
cat ~/Dropbox/VimConfig/Config/alacritty.yml > ~/.config/alacritty/alacritty.yml
cat ~/Dropbox/VimConfig/Plugins/Ultisnipps/cpp.snippets > ~/.vim/bundle/vim-snippets/UltiSnips/cpp.snippets

rsync -a ~/Dropbox/VimConfig/Fonts/ ~/.fonts/

#Create Folder And Template File
mkdir ~/Dropbox/Space/Contest/
alacritty -e sh -c "cd ~/Dropbox/Space/Contest/ && vim; exec $SHELL"
