
" Pathogen package manager -used for solarized
execute pathogen#infect()

call pathogen#helptags()

set nu
syntax enable

filetype plugin on
filetype indent on

set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set mouse=a

set background=dark
" solarized options 
colorscheme solarized

set guifont=12


" Vim-Plug plugins

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-dispatch'
Plug 'valloric/YouCompleteMe'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }



call plug#end()

let g:airline_theme='solarized'

" Turn NERDTree On/Off - Ctrl+n
map <C-n> :NERDTreeToggle<CR>


