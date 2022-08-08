#!/bin/zsh
cd $HOME
touch ~/.vimrc
echo "source ~/.vim/.vimrc" >> ~/.vimrc
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | zsh
zsh
nvm install --lts
zsh
git clone https://github.com/Siri-chan/.vim --recursive
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
which nvim &> /dev/null && echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after\nlet &packpath=&runtimepath\nsource ~/.vimrc" >> ~/.config/nvim/init.vim ; nvim +'PlugInstall --sync' +'CocInstall ' +qa || vim +'PlugInstall --sync' +'CocInstall ' +qa

