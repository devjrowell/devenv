#!/bin/zsh

# oh-my-zsh
#cd ~/.devenv && git clone https://github.com/robbyrussell/oh-my-zsh.git
#cd ~/.devenv/oh-my-zsh && git submodule update --init --recursive

# vim plugins
#cd ~/.devenv/vim/bundle
#git clone https://github.com/VundleVim/Vundle.vim.git
#git clone https://github.com/Valloric/YouCompleteMe.git
#git clone https://github.com/kien/ctrlp.vim.git
#git clone https://github.com/scrooloose/nerdtree.git
#git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git
#git clone https://github.com/OmniSharp/omnisharp-vim.git
#git clone https://github.com/scrooloose/syntastic.git
#git clone https://github.com/vim-airline/vim-airline.git
#git clone https://github.com/vim-airline/vim-airline-themes.git
#git clone https://github.com/altercation/vim-colors-solarized.git
#git clone https://github.com/tpope/vim-dispatch.git
#exit

# Omnisharp
cd ~/.devenv/vim/bundle/omnisharp-vim
git submodule update --init --recursive
cd server
xbuild

# YouCompleteMe submodules
cd ~/.devenv/vim/bundle/YouCompleteMe
git submodule update --init --recursive
sudo npm install tern -g
sudo npm install typescript -g
./install.py --clang-completer --omnisharp-completer --tern-completer

# install all of the vim plugins
vim -c PluginInstall

# tmux plugins
cd ~/.devenv/tmux/plugins
# tmux-cpu-mem-load ?
git clone https://github.com/erikw/tmux-powerline.git

cd ~/

# zsh
ln -s .devenv/zshrc .zshrc
ln -s .devenv/oh-my-zsh .oh-my-zsh

# tmux
ln -s .devenv/tmux.conf .tmux.conf

# vim
ln -s .devenv/vim .vim
ln -s .devenv/vimrc .vimrc

