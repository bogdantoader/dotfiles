
set nu
syntax on 

filetype plugin on
filetype indent on

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smarttab
set smartindent
set autoindent
set splitright
set splitbelow

set hlsearch
nnoremap <Esc> :nohlsearch<CR>

"set colorcolumn=80
"set tw=80

" enable spellchecking for latex files
" autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en_gb

" use Skim when opening file from LatexBox
" let g:LatexBox_viewer = "open -a Skim.app"
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

set guifont=12

" Vim-Plug plugins

call plug#begin()


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-dispatch'
Plug 'Yggdroot/indentLine'
Plug 'LaTeX-Box-Team/LaTeX-Box'
Plug 'morhetz/gruvbox'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

call plug#end()

" let g:airline_theme='solarized'

" Turn NERDTree On/Off - Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Mouse select copy on mac: press alt when selecting if it's just something
" short. also:
set mouse=a

" folding LatexDocuments - awesome!
" let g:LatexBox_Folding = 1

" spich panes with ctrl+[hjkl]
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

au BufNewFile,BufRead *.py
  \ set textwidth=79 |
  \ set fileformat=unix

" :hi LineNr NONE


" Save undo history
set undofile

" Case-insensitive searching UNLESS \C or capital in search
set ignorecase
set smartcase

" Sets how vim will display certain whitespace in the editor.
set list
set listchars=tab:»\ ,trail:·,nbsp:␣

" Show which line your cursor is on
set cursorline

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=10


autocmd vimenter * ++nested colorscheme gruvbox   

set background=dark    " Setting dark mode
" set background=light   " Setting light mode

