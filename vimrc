set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdcommenter.git'

Plugin 'kien/ctrlp.vim'

Plugin 'mileszs/ack.vim'

" Functionality
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/tabular'
Plugin 'jgdavey/vim-blockle' " \b to toggle ruby blocks
Plugin 'kana/vim-textobj-user'
Plugin 'Lokaltog/vim-powerline'
Plugin 'nelstrom/vim-markdown-folding'
Plugin 'panozzaj/vim-autocorrect'
Plugin 'rizzatti/dash.vim' " local dash support
Plugin 'rizzatti/funcoo.vim' " lib
Plugin 'rizzatti/greper.vim' " :G and friends for fast grep
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive' " :Gblame is amazingballz
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-rbenv'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vividchalk'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/Gist.vim'
Plugin 'vim-scripts/IndexedSearch'
Plugin 'Lokaltog/vim-easymotion'

" " Syntax
Plugin 'depuracao/vim-rdoc'
Plugin 'elzr/vim-json'
Plugin 'groenewege/vim-less'
Plugin 'honza/dockerfile.vim'
Plugin 'jnwhiteh/vim-golang'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'slim-template/vim-slim'
Plugin 'timcharper/textile.vim'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/bash-support.vim'
Plugin 'vim-scripts/jQuery'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"" Set file paths
set tags=./tags,tags,/Users/skolman/git/tags;

let mapleader = ","
let g:ackprg = 'ag --nogroup --nocolor --column' "tell ack to use silver searcher

" Appearance
syntax enable
set background=light
"colorscheme solarized
set guifont=monaco:h16
set encoding=utf-8
set showcmd                     " display incomplete commands
set scrolloff=3                 " positions cursor so that there 3 lines above and below
set showmode
set showcmd
set hidden
set visualbell
set cursorline
set ttyfast
set ruler
set laststatus=2
set relativenumber
set undofile
set pastetoggle=<F2>            " set paste mode by hitting F2. Useful for pasting text from clipboard

"These two lines fix Vim’s horribly broken default regex “handling” by
""automatically inserting a \v before any string you search for. This turns off
"Vim’s crazy default regex characters and makes searches use normal regexes.
nnoremap / /\v
vnoremap / /\v

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
" Remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set gdefault                    " applies substitutions globally on lines
nnoremap <leader><space> :noh<cr> " key to clear search highlights
"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)

" Motions
nnoremap <tab> %
nnoremap <tab> %                " map block movement to tab
nnoremap <leader><leader> <c-^> " switch between buffers using ,,
nnoremap ]] :tnext<cr>
nnoremap [[ :tprev<cr>              " mapping to traverse multiple tag matches
nnoremap <leader>v :vsplit<cr>  " verical split on ,v
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0        " keep cursor colum when JK motion
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_upper = 1          "  Use uppercase target labels and type as a lower case
let g:EasyMotion_use_smartsign_us = 1   " Smartsign (type `3` and match `3`&`#`)

map <leader>f :CtrlP<cr>
map <leader>F :CtrlPMRU<cr>

" The default for 'backspace' is very confusing to new users, so change it to a
" more sensible value.  Add "set backspace&" to your ~/.vimrc to reset it.
set backspace+=indent,eol,start

" Disable localized menus for now since only some items are translated (e.g.
" the entire MacVim menu is set up in a nib file which currently only is
" translated to English).
set langmenu=none
