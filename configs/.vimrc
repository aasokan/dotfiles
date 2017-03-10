" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Turn on line numbering. Turn it off with "set nonu"
set number
set paste
set backspace=indent,eol,start  "Allow backspace in insert mode
set visualbell                  "No sounds
set showcmd                     "Show incomplete cmds down the bottom

" Set syntax on
syntax on


" Indent automatically depending on filetype
autocmd FileType make setlocal noexpandtab
filetype indent on
filetype plugin on
set autoindent
set smartindent
set smarttab

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" ================ Folds ============================
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default


set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

set term=xterm
set title
set ruler " show the cursor position all the time
set ls=2 " allways show status line
set tabstop=4
set shiftwidth=4
set expandtab

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" instead of the default of 1, set the window minimum height to 0 to maximize real
" estate available to an open window.
set wmh=0
