"if empty(glob('~/.vim/autoload/plug.vim')) silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

packloadall
let mapleader = " "

call plug#begin()
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'morhetz/gruvbox'
    Plug 'mattn/emmet-vim'
    Plug 'ervandew/supertab'
    Plug 'jelera/vim-javascript-syntax'
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
    Plug 'joshdick/onedark.vim'
    Plug 'dylanaraps/wal.vim'
    Plug 'lilydjwg/colorizer'
    Plug 'arcticicestudio/nord-vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'tpope/vim-surround'
call plug#end()
set relativenumber
set number

map <Down> <NOP>
map <Up> <NOP>
map <Left> <NOP>
map <Right> <NOP>

inore jj <Esc>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap f :Files<CR>
nnoremap tn :tabe<CR>

set noerrorbells
set tabstop=4 
set hidden
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set incsearch
set wildmenu
set scrolloff=10
set showtabline=0
set laststatus=2
set noshowmode
set signcolumn=yes
syntax on
colorscheme nord
hi Normal guibg=NONE ctermbg=NONE
set pastetoggle=<F3>

"ALACRITTY FIX
set ttymouse=sgr

let g:lightline = {
          \ 'colorscheme': 'wombat',
      \ }

"COC AUTOCOMPLETE
nmap <leader>gd <Plug>(coc-definition)

