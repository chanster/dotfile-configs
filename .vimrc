set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
<<<<<<< HEAD

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

call vundle#begin()
" Keep Plugin commands between vundle#begin/end.
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
" Git
Plugin 'tpope/vim-fugitive'
" nice statusbar
Plugin 'bling/vim-airline'
=======
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
" Lua syntax
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-ftplugin'
>>>>>>> 2808e1c37ec3a51f564d8a427bd4d0204f5d0e93

" colorschemes
Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
<<<<<<< HEAD

set laststatus=2             " Always show the statusline
set encoding=utf-8           " Necessary to show Unicode glyphs
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

syntax on                    " syntax highlighting
colorscheme molokai          " see flazz/vim-colorschemes for list

" Mappings
:noremap <C-n> :bnext<CR>
:noremap <C-p> :bprevious<CR>


=======
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
>>>>>>> 2808e1c37ec3a51f564d8a427bd4d0204f5d0e93
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" .vimrc
" See: http://vimdoc.sourceforge.net/htmldoc/options.html for details

<<<<<<< HEAD
set tabstop=4       " Number of spaces that a <Tab> in the file counts for.
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.
set expandtab       " Tabs to space. use CTRL-V <Tab> for real <Tab>.
set smarttab        " <Tab> in front of a line inserts blanks according to 'shiftwidth'.
set showcmd         " Show (partial) command in status line.
set number          " Show line numbers.
set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " screen. The time to show the match can be set with 'matchtime'.
 
set hlsearch        " When there is a previous search pattern, highlight all its matches.
set incsearch       " While typing a search command, show immediately where the so far typed pattern matches.
set ignorecase      " Ignore case in search patterns. 
set smartcase       " Override the 'ignorecase' option if the search pattern contains upper case characters.
=======
" For multi-byte character support (CJK support, for example):
"set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1
       
set tabstop=4       " Number of spaces that a <Tab> in the file counts for.
 
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.
 
set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.
 
set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.
 
set showcmd         " Show (partial) command in status line.

set number          " Show line numbers.

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.
 
set hlsearch        " When there is a previous search pattern, highlight all
                    " its matches.
 
set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.
 
set ignorecase      " Ignore case in search patterns.
 
set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.
>>>>>>> 2808e1c37ec3a51f564d8a427bd4d0204f5d0e93
 
set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.
 
set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).
 
<<<<<<< HEAD
"set textwidth=79   " Maximum width of text that is being inserted. A longer
=======
set textwidth=79    " Maximum width of text that is being inserted. A longer
>>>>>>> 2808e1c37ec3a51f564d8a427bd4d0204f5d0e93
                    " line will be broken after white space to get this width.
 
set formatoptions=c,q,r,t " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode. 
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)
 
<<<<<<< HEAD
set ruler           " Show the line and column number of the cursor position, separated by a comma.
 
"set background=dark " valid options: light or dark
 
set mouse=a         " Enable the use of the mouse.

=======
set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.
 
set background=dark " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.
 
set mouse=a         " Enable the use of the mouse.
 
syntax on
colorscheme molokai
>>>>>>> 2808e1c37ec3a51f564d8a427bd4d0204f5d0e93