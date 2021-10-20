set number
syntax on
set expandtab
set autoindent
set tabstop=4
set shiftwidth=4
set showmatch
execute pathogen#infect()
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
map <C-j> :tabp<CR>
map <C-k> :tabn<CR>
map <C-x> :NERDTreeToggle<CR>
map <C-l> :TlistToggle<CR>
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window =1
let mapleader=","
filetype plugin indent on
imap <F6> <C-x><C-o>
