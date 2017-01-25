" for pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

if !has("gui_running")
    :source $VIMRUNTIME/menu.vim 
    :set wildmenu                        
    :set cpoptions-=<
    :set wildcharm=<C-Z>
    :map <F4> :emenu <C-Z>
endif

let g:slimv_swank_cmd='! urxvt -e sbcl --load ~/.vim/bundle/slimv/slime/start-swank.lisp &'

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


