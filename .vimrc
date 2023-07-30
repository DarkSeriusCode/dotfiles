" Plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

Plug 'morhetz/gruvbox'
Plug 'tomasiser/vim-code-dark'
Plug 'haishanh/night-owl.vim'

Plug 'vim-airline/vim-airline'
Plug 'chun-yang/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-commentary'

Plug 'ycm-core/YouCompleteMe'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'kien/rainbow_parentheses.vim'
Plug 'wakatime/vim-wakatime'

call plug#end()

" Plugins settings
" Airline
set noshowmode 
let g:airline_expiremental = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#ctrlspace#enabled = 1
let g:airline#extensions#tabline#enabled = 1

" for YCM
set completeopt-=preview
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_error_symbol = 'E:'
let g:ycm_warning_symbol = 'W:'

" View
syntax enable
" colorscheme codedark
colorscheme gruvbox

set background=dark
set number relativenumber
set cc=81
set encoding=UTF-8

" Code folding
set foldmethod=indent
set foldnestmax=2
set nofoldenable
set foldlevel=10

" Tab sets
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Search sets
set hlsearch
set ignorecase
set smartcase
set incsearch

" Other
set autowrite

" Mappings
map <C-n> :NERDTreeToggle <CR>
map <C-h> :bprevious <CR>
map <C-l> :bnext <CR>
map <C-c> :bd <CR>

