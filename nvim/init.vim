set nocompatible
set nu

" set the runtime path to include Vundle and initialize
call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/seoul256.vim'

Plug 'Yggdroot/indentLine'

Plug 'neomake/neomake'

Plug 'vim-scripts/The-NERD-Tree'
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'elzr/vim-json'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'leafgarland/typescript-vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Quramy/tsuquyomi'

call plug#end()

let g:airline#extensions#disable_rtp_load = 1

" Theme
let g:seoul256_background = 234
colo seoul256

" IndentLine
let g:indentLine_color_term = 240

" NERD Tree
map <c-\> :NERDTreeToggle<CR>
map <c-0> :NERDTreeFocus<CR>

" Neomake-eslint
let g:neomake_javascript_enabled_makers = ['eslint']
autocmd! BufWritePost,BufEnter * Neomake


let g:neomake_error_sign = {'text': '✖', 'texthl': 'NeomakeErrorHL'}
let g:neomake_warning_sign = {'text': '⚠', 'texthl': 'NeomakeWarningSign'}
let g:neomake_message_sign = {'text': '➤', 'texthl': 'NeomakeMessageSign'}
let g:neomake_info_sign = {'text': 'ℹ', 'texthl': 'NeomakeInfoSign'}

let g:neomake_typescript_enabled_makers = []

highlight NeomakeErrorHL ctermfg=254 ctermbg=234
highlight NeomakeErrorHL ctermfg=254 ctermbg=234

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


" Tsuquyomi settings
"
" :echo tsuquyomi#config#tsscmd()

" Clipboard
set clipboard=unnamed


