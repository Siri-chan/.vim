#!/bin/bash

##REQUIRES NODE PYTHON GIT AND VIM

"cd $HOME || echo "cd is broken" ; exit"
touch ~/.vimrc
echo "source ~/.vim/.vimrc" > ~/.vimrc
#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
#source ~/.bash_profile
#nvm install --lts
source ~/.bash_profile
git clone https://github.com/Siri-chan/.vim --recursive
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
which nvim &> /dev/null && printf "set runtimepath^=~/.vim runtimepath+=~/.vim/after\nlet &packpath=&runtimepath\nsource ~/.vimrc" >> ~/.config/nvim/init.vim ; nvim +'PlugInstall --sync' +'CocInstall ' +qa || vim +'PlugInstall --sync' +'CocInstall ' +qa
