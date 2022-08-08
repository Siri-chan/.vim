#!/bin/bash
"cd $HOME || echo "cd is broken" ; exit"
touch ~/.vimrc
echo "source ~/.vim/.vimrc" >> ~/.vimrc
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
bash
nvm install --lts
bash
git clone https://github.com/Siri-chan/.vim --recursive
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
which nvim &> /dev/null && printf "set runtimepath^=~/.vim runtimepath+=~/.vim/after\nlet &packpath=&runtimepath\nsource ~/.vimrc" >> ~/.config/nvim/init.vim ; nvim +'PlugInstall --sync' +'CocInstall ' +qa || vim +'PlugInstall --sync' +'CocInstall ' +qa
