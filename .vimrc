" Disable vi-stuff
set nocompatible
set encoding=utf-8

" Detect filetype
filetype plugin on
" Enable syntax highighting
syntax enable
" 256 colours please
set t_Co=256
" color and theme 
set background=dark
colorscheme desert
" Open splits to the right or below; more natural than the default
set splitright
set splitbelow

" Text management

filetype plugin indent on
" 2 spaces please
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
" Round indent to nearest multiple of 2
set shiftround
" No line-wrapping
set nowrap
" Spell-check always on
set spell
" Underscores denote words
set iskeyword-=_
" No extra spaces when joining lines
set nojoinspaces
" Interpret numbers with leading zeroes as decimal, not octal
set nrformats=

" change <leader>
let mapleader=","

"search into subfolders and tab completion
set path+=**
set wildmenu

"internal filebrowser
let g:netrw_banner=0
let g:netrw_browse_split=4  "open in prior window
let g:netrw_altv=1          "open splits to the right
let g:netrw_liststyle=3     "treeview
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" Unmap the arrow keys
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

" Pairs
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i

" Visual decorations

" Show status line
set laststatus=2
" Show what mode you're currently in
set showmode
" Show what commands you're typing
set showcmd
" Allow modelines
set modeline
" Show current line and column position in file
set ruler
" Show file title in terminal tab
set title
" Show invisibles
set list
set listchars=tab:»-,trail:•
" Set relative line numbers...
set relativenumber
" ...but absolute numbers on the current line
set number
" Limit line-length to 80 columns by highlighting col 81 onward
" set colorcolumn=81

" Force cursor onto a new line after 80 characters
" set textwidth=80

" Highlight current line
set tgc
set cul
set cursorline
