set nocompatible

" set the runtime path to include Vundle and initialize
call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/seoul256.vim'

Plug 'Yggdroot/indentLine'
Plug 'scrooloose/syntastic'

Plug 'The-NERD-Tree'
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'davidhalter/jedi-vim'

call plug#end()

" Theme
let g:seoul256_background = 234
colo seoul256

" IndentLine
let g:indentLine_color_term = 240

" NERD Tree
map <F2> :NERDTreeToggle<CR>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

" ctrl-p
map <c-p> :CtrlP<CR>

" Tab and syntax

set expandtab
set ts=4
set sw=2

autocmd Filetype html setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab

" Don't hide quotes in JSON document
set conceallevel=0

if has("syntax")
    syntax on
endif

map <F3> :set nu!<CR>
nnoremap tn :tabnew<CR>

" Store swapfile to a specific directory
set directory=$HOME/.config/nvim/swapfiles/

" Show whitespace characters
set listchars=trail:~,extends:>,precedes:<
set list

