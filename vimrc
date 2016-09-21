" VIM PLUG
call plug#begin()
"plugin list:
Plug 'kien/ctrlp.vim'
Plug 'rstacruz/sparkup'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-fugitive'
Plug 'Lokaltog/vim-easymotion'
Plug 'vim-scripts/indentpython.vim'
Plug 'will133/vim-dirdiff'
Plug 'tmhedberg/SimpylFold'
Plug 'scrooloose/syntastic'
Plug 'andviro/flake8-vim'

" themes
Plug 'jnurmine/Zenburn'

call plug#end() 

"************************************************************
" OWN CHANGES
"************************************************************
set nocompatible              " be iMproved
set clipboard=unnamed
set encoding=utf-8

"fix <BS>
if &term == "termname"
  set t_kb=^V<BS>
  fixdel
endif
colorscheme elflord 
" menu z tabem
set wildmenu
" replace with the dolar sign at the end
set cpoptions+=$
set hlsearch
" syntax
let python_highlight_all=1
syntax on

" line numbers
set number

" sync copy/paste buffer with x
map <F9> :!xclip -f<CR>    
map <F10> :r !xclip -o<CR>

" cursor position
set ruler

" mouse scrolling
"set mouse=a

" PEP8
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2

" Enable folding
set foldmethod=indent
set foldlevel=99



