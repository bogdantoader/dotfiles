
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
set smartindent
set autoindent

" enable spellchecking for latex files
" autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en_gb

" use Skim when opening file from LatexBox
let g:LatexBox_viewer = "open -a Skim.app"
let g:LatexBox_split_width = 45
let g:LatexBox_quickfix = 2

" map <localleader>
let maplocalleader = "\<Space>"

" map <localleader> + s  to save+compile
autocmd FileType tex map <buffer> <Localleader>s :w<CR><Localleader>ll

" tab marker - good for python files
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
Plug 'LaTeX-Box-Team/LaTeX-Box'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }



call plug#end()

let g:airline_theme='solarized'

" Turn NERDTree On/Off - Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Mouse select copy on mac: press alt when selecting if it's just something
" short. also:
set mouse=a

" folding LatexDocuments - awesome!
" let g:LatexBox_Folding = 1






