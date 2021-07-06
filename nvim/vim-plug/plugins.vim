call  plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'junegunn/goyo.vim'
    Plug 'farmergreg/vim-lastplace'
    Plug 'dracula/vim', { 'as': 'dracula' }
   " Plug 'morhetz/gruvbox'
    Plug 'mattn/emmet-vim'
    Plug 'jelera/vim-javascript-syntax'
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
    Plug 'joshdick/onedark.vim'
    Plug 'dylanaraps/wal.vim'
    Plug 'lilydjwg/colorizer'
    Plug 'arcticicestudio/nord-vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'itchyny/lightline.vim'
"    Plug 'vim-airline/vim-airline'
"    Plug 'vim-airline/vim-airline-themes'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-fugitive'
    Plug 'preservim/nerdtree'
    Plug 'MaxMEllon/vim-jsx-pretty'
    Plug 'yuezk/vim-js'
    Plug 'honza/vim-snippets'
    Plug 'alvan/vim-closetag'
    Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
    Plug 'pangloss/vim-javascript'
    Plug 'sheerun/vim-polyglot'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'rafi/awesome-vim-colorschemes'
    Plug 'dylanaraps/wal.vim'
    Plug 'shinchu/lightline-gruvbox.vim'
    Plug 'gruvbox-community/gruvbox'
    Plug 'ntpeters/vim-better-whitespace'
call plug#end()
