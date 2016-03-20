set nocompatible              " be iMproved, required
filetype off                  " required

execute pathogen#infect()
syntax on
filetype plugin indent on

"set relativenumber

" enable syntax highlighting 
syntax enable 

" show line numbers 
set number 
" set tabs to have 4 spaces 
set ts=4 
" indent when moving to the next line while writing code 
set autoindent 
" expand tabs into spaces 
set expandtab 
" when using the >> or << commands, shift lines by 4 spaces 
set shiftwidth=4 
" show a visual line under the cursor's current line 
set cursorline 
" show the matching part of the pair for [] {} and () 
set showmatch 
" enable all Python syntax highlighting features 
let python_highlight_all = 1

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

source ~/.devenv/vimrc.plugins
source ~/.devenv/vimrc.colors
source ~/.devenv/vimrc.omnisharp
source ~/.devenv/vimrc.neocomplete
source ~/.devenv/vimrc.minimap
