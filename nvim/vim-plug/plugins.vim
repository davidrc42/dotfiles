call  plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'philj56/vim-asm-indent'
    Plug 'junegunn/goyo.vim'
    Plug 'farmergreg/vim-lastplace'
    Plug 'tpope/vim-commentary'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'mattn/emmet-vim'
    Plug 'jelera/vim-javascript-syntax'
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
    Plug 'joshdick/onedark.vim'
    Plug 'rhysd/vim-clang-format'
    Plug 'dylanaraps/wal.vim'
    Plug 'lilydjwg/colorizer'
    Plug 'arcticicestudio/nord-vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'nvim-lua/plenary.nvim',{'do':':TSUpdate'}
    Plug 'tpope/vim-surround'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'tpope/vim-fugitive'
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'fxn/vim-monochrome'
    Plug 'andreasvc/vim-256noir'
    Plug 't184256/vim-boring'
    Plug 'aditya-azad/candle-grey'
    Plug 'ewilazarus/preto'
    Plug 'Jorengarenar/vim-darkness'
    Plug 'pbrisbin/vim-colors-off'
    Plug 'andreypopp/vim-colors-plain'
    Plug 'rktjmp/lush.nvim'
    Plug 'franbach/miramare'
    Plug 'Lokaltog/vim-monotone'
    Plug 'huyvohcmc/atlas.vim'
    Plug 'preservim/nerdtree'
    Plug 'MaxMEllon/vim-jsx-pretty'
    Plug 'yuezk/vim-js'
    Plug 'honza/vim-snippets'
    Plug 'alvan/vim-closetag'
    Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
    Plug 'dikiaap/minimalist'
    Plug 'pangloss/vim-javascript'
    Plug 'sheerun/vim-polyglot'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'rafi/awesome-vim-colorschemes'
    Plug 'dylanaraps/wal.vim'
    Plug 'gruvbox-community/gruvbox'
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'kien/ctrlp.vim'
    Plug 'scrooloose/nerdcommenter'
    Plug 'psf/black'
    Plug 'altercation/vim-colors-solarized'
    Plug 'ayu-theme/ayu-vim'
call plug#end()
