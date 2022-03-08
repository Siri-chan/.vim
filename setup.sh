#!/bin/sh
cd $HOME
touch ~/.vimrc
echo "source ./.vim/.vimrc" >> ~/.vimrc
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | sh
nvm install --lts
git clone https://github.com/Siri-chan/.vim -C ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +'PlugInstall --sync' +'CocInstall ' +qa

