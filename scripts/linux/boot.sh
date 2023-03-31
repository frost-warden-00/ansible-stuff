# TODO Create a repo for personal dot files
#!/bin/bash

sudo apt install vim ansible git -y

mkdir -p ~/.vim/pack/vim-airline/start/
git clone --depth 1 \
  https://github.com/vim-airline/vim-airline.git \
  ~/.vim/pack/vim-airline/start/vim-airline

mkdir -p ~/.vim/pack/NERDTree/start/
git clone --depth 1 \
  https://github.com/preservim/nerdtree.git \
  ~/.vim/pack/NERDTree/start/NERDTree

mkdir -p ~/.vim/pack/airblade/start
cd ~/.vim/pack/airblade/start
git clone https://github.com/airblade/vim-gitgutter.git
vim -u NONE -c "helptags vim-gitgutter/doc" -c q