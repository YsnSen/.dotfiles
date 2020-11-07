set encoding=utf-8
set number relativenumber
set noswapfile
set scrolloff=7
syntax enable

set backspace=indent,eol,start
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

call plug#begin()
    Plug 'scrooloose/nerdtree'
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'lifepillar/vim-solarized8'
    Plug 'zchee/deoplete-jedi'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'jiangmiao/auto-pairs'
    Plug 'scrooloose/nerdcommenter'
    Plug 'sbdchd/neoformat'
    Plug 'neomake/neomake'
    Plug 'morhetz/gruvbox'
    Plug 'majutsushi/tagbar'
call plug#end()

set termguicolors
set background=dark
colorscheme solarized8

let g:Hexokinase_highlighters = [ 'backgroundfull' ]
let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla,colour_names'
let g:airline_theme='base16_solarized'

let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1


let g:neomake_python_enabled_makers = ['pylint']

map <C-n> :NERDTreeToggle<CR>
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

let g:airline_powerline_fonts = 1

nmap <F8> :TagbarToggle<CR>

