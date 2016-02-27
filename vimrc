set nocompatible              " be iMproved, required
filetype off                  " required

execute pathogen#infect()
syntax on
filetype plugin indent on

set relativenumber

" splitting windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

source ~/.vimrc.plugins
source ~/.vimrc.colors
source ~/.vimrc.omnisharp
