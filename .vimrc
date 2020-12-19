call plug#begin('~/.vim/plugged')

" cSyntaxAfter (C-Like Syntax Highlighting)
Plug 'vim-scripts/cSyntaxAfter'

" vim-polyglot (Full Language Pack)
Plug 'sheerun/vim-polyglot'
" NERDTree (File Browser)
Plug 'preservim/nerdtree'

" Auto-Pairs (Auto Brackets, Quotes)
Plug 'jiangmiao/auto-pairs'

" Guide Lines (indentLine)
Plug 'Yggdroot/indentLine'

" fugitive.vim & gv.vim (Git)
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" Airline (Bar & Themes)
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Colorschemes (Vim Colors)
Plug 'arcticicestudio/nord-vim'
Plug 'ghifarit53/tokyonight-vim'

" Colorizer (Hex Colors)
Plug 'chrisbra/colorizer'

call plug#end()

" Indent Lines Settings
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_enabled = 1

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

" Misc Options
set nu
autocmd! FileType c,cpp,java,php,cs,go call CSyntaxAfter()
let g:airline_powerline_fonts = 0

" Color Options
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

let g:tokyonight_style = 'night'
let g:tokyonight_transparent_background = 0
let g:tokyonight_enable_italic = 1

colorscheme tokyonight
syntax on

" Custom Key-Mappings
map <C-n> :NERDTreeToggle<CR>
map <C-l> :IndentLinesToggle<CR>
