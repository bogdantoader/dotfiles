
" Pathogen package manager -used for solarized
execute pathogen#infect()

call pathogen#helptags()

set nu
syntax enable

filetype plugin on
filetype indent on


set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smarttab
set mouse=a
set smartindent
set autoindent

let g:tex_conceal = ""
let g:indentLine_char = '┆'
let g:indentLine_color_gui = '#444444'

autocmd FileType python setlocal expandtab shiftwidth=2 softtabstop=2



set background=dark
" solarized options 
colorscheme solarized

set guifont=12


" Vim-Plug plugins

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-dispatch'
Plug 'Yggdroot/indentLine'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }



call plug#end()

let g:airline_theme='solarized'

" Turn NERDTree On/Off - Ctrl+n
map <C-n> :NERDTreeToggle<CR>


