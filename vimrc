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
inoremap jj <esc>


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
source ~/.devenv/vimrc.php
source ~/.devenv/vimrc.tern

" auto reload vimrc
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['standard'] " eslint,standard
"let g:syntastic_javascript_checkers = ['jsxhint']
"let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'
"autocmd bufwritepost *.js :silent exec "!/app/node_modules/.bin/standard --fix % > /dev/null 2>&1"
"set autoread

"command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
"function! s:RunShellCommand(cmdline)
    "echo a:cmdline
    "let expanded_cmdline = a:cmdline
    "for part in split(a:cmdline, ' ')
        "if part[0] =~ '\v[%#<]'
            "let expanded_part = fnameescape(expand(part))
            "let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
        "endif
    "endfor
    "botright new
    "setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
""    call setline(1, 'You entered:    ' . a:cmdline)
""    call setline(2, 'Expanded Form:  ' .expanded_cmdline)
""    call setline(3,substitute(getline(2),'.','=','g'))
    "execute '$read !'. expanded_cmdline
    "setlocal nomodifiable
    "1
"endfunction

"set tags=./tags
"let g:easytags_dynamic_files = 1

