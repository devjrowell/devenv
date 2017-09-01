set nocompatible              " be iMproved, required
set hidden
filetype off                  " required
set showtabline=0

"set autochdir
"autocmd BufEnter * silent! lcd %:p:h
nnoremap ,cd :lcd %:p:h<CR>:pwd<CR>

execute pathogen#infect()
syntax on
filetype plugin indent on
set shell=zsh

set relativenumber

" enable syntax highlighting 
syntax enable 
"set foldmethod=syntax
"set nowritebackup
set viewoptions=cursor,folds,slash,unix

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

" buffer switch
"map <C-Tab> :bnext<CR>
"map <C-S-Tab> :bprevious<CR>
"map <Leader>g :BuffergatorToggle<CR>

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
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["cshtml"] }

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
map <Leader>g :CtrlPBuffer<CR>
nnoremap <Leader>f :CtrlP<CR>:redraw!<CR>

if executable('ag') 
    " Use ag over grep 
    ""set grepprg=ag\ --nogroup\ --nocolor 
    set grepprg=ag\ --vimgrep\ --ignore=*.min.*\ --ignore=kendo.*\ --ignore=bower_components\ --ignore=wwwroot/lib\ $* 
    set grepformat=%f:%l:%c:%m
    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore 
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""' 
    " ag is fast enough that CtrlP doesn't need to cache 
    let g:ctrlp_use_caching = 0 
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" auto open quickfix window for grep
autocmd QuickFixCmdPost *grep* cwindow

source ~/.devenv/vimrc.plugins
source ~/.devenv/vimrc.colors
source ~/.devenv/vimrc.omnisharp
source ~/.devenv/vimrc.neocomplete
source ~/.devenv/vimrc.typescript
source ~/.devenv/vimrc.php

" auto reload vimrc
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

