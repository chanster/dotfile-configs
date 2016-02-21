set nocompatible              " be iMproved, required
filetype off                  " required

" vundle {{{
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" Keep Plugin commands between vundle#begin/end.
Plugin 'gmarik/Vundle.vim'              " let Vundle manage Vundle, required
"Plugin 'valloric/YouCompleteMe'         " code completion
Plugin 'tpope/vim-fugitive'             " git
Plugin 'vim-airline/vim-airline'        " nice statusbar
Plugin 'vim-airline/vim-airline-themes' " airline themes
Plugin 'flazz/vim-colorschemes'         " vim colorschemes

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

set laststatus=2             " Always show the statusline
set encoding=utf-8           " Necessary to show Unicode glyphs

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
 " }}}

 " formatting {{{
set tabstop=4      " Number of spaces that a <Tab> in the file counts for.
set shiftwidth=4   " Number of spaces to use for each step of (auto)indent.
set expandtab      " Tabs to space. use CTRL-V <Tab> for real <Tab>.
set smarttab       " <Tab> in front of a line inserts blanks according to 'shiftwidth'.
set autoindent     " copy indent from previous line
set backspace=2    " indent,eol,start
set textwidth=120  " Maximum width of text that is being inserted. Longer line will be broken after white space to get this width.

autocmd BufNewFile,BufRead * setlocal formatoptions=crq " work around for 'set formatoptions' with C file plugin
                " letter  meaning when present in 'formatoptions'
                " ------  ---------------------------------------
                " t       Auto-wrap text using textwidth (does not apply to comments)
                " c       Auto-wrap comments using textwidth, inserting the current comment leader automatically.
                " r       Automatically insert the current comment leader after hitting <Enter> in Insert mode.
" }}}

" visuals {{{
syntax on             " syntax highlighting
set t_Co=256          " 256 colors
colorscheme molokai   " see flazz/vim-colorschemes for list
set showcmd           " Show (partial) command in status line.
set number            " Show line numbers.
set showmatch         " Show matching bracket
set foldmethod=marker " code folding with marker, default {{{,}}}}
set ruler             " Show the line and column number of the cursor position, separated by a comma.
set diffopt+=vertical " set Gdiff to verical split
" }}}

" search {{{
set hlsearch        " When there is a previous search pattern, highlight all its matches.
set incsearch       " While typing a search command, show immediately where the so far typed pattern matches.
set ignorecase      " Ignore case in search patterns. 
set smartcase       " Override the 'ignorecase' option if the search pattern contains upper case characters.
 " }}}

" Mouse {{{
set mouse-=a         " Enable the use of the mouse.
" }}}

" Mappings {{{
:noremap <C-n> :bnext!<CR>
:noremap <C-p> :bprevious!<CR>
:noremap <space> za<CR>
" }}}

