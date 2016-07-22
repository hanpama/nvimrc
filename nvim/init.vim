set nocompatible

" set the runtime path to include Vundle and initialize
call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/seoul256.vim'

Plug 'Yggdroot/indentLine'

Plug 'neomake/neomake'

Plug 'The-NERD-Tree'
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'elzr/vim-json'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

call plug#end()

" Theme
let g:seoul256_background = 234
colo seoul256

" IndentLine
let g:indentLine_color_term = 240

" NERD Tree
map <F2> :NERDTreeToggle<CR>

" Neomake-eslint
let g:neomake_javascript_enabled_makers = ['eslint']
autocmd! BufWritePost,BufEnter * Neomake

" ctrl-p
map <c-p> :CtrlP<CR>

" Tab and syntax
set expandtab
set ts=4
set sw=2

if has("syntax")
    syntax on
endif

autocmd Filetype html setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
let g:vim_json_syntax_conceal = 0


" Custom shortcuts
map <F3> :set nu!<CR>
nnoremap tn :tabnew<CR>
map <F4> :w !diff % -<CR>


" Store swapfile to a specific directory
set directory=$HOME/.config/nvim/swapfiles/

" Show whitespace characters
set listchars=trail:~,extends:>,precedes:<
set list

