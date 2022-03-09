#!/bin/bash
cd $HOME
touch ~/.vimrc
echo "source ./.vim/.vimrc" >> ~/.vimrc
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
bash
nvm install --lts
git clone https://github.com/Siri-chan/.vim --recursive
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +'PlugInstall --sync' +'CocInstall ' +qa
