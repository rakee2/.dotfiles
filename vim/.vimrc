"
"       ________ ++     ________
"      /VVVVVVVV\++++  /VVVVVVVV\
"      \VVVVVVVV/++++++\VVVVVVVV/
"       |VVVVVV|++++++++/VVVVV/'
"       |VVVVVV|++++++/VVVVV/'
"      +|VVVVVV|++++/VVVVV/'+
"    +++|VVVVVV|++/VVVVV/'+++++      
"   +++++|VVVVVV|/VVVVV/'+++++++++  
"     +++|VVVVVVVVVVV/'+++++++++        
"       +|VVVVVVVVV/'+++++++++          
"        |VVVVVVV/'+++++++++       
"        |VVVVV/'+++++++++        
"        |VVV/'+++++++++
"        'V/'   ++++++
"                 ++

" Goto .vimrc by :Config
command! Config execute ":e $MYVIMRC" 

syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu rnu
set number relativenumber
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set encoding=UTF-8
set history=500
set autoread

" ================ Vim-Plug Plugins ================
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
"Plug 'lyuts/vim-rtags'
Plug 'https://git::@github.com/ctrlpvim/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons' |
            \ Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'dense-analysis/ale'
Plug 'https://git::@github.com/tpope/vim-fugitive.git'
Plug 'arcticicestudio/nord-vim'
Plug 'zxqfl/tabnine-vim'
Plug 'vifm/vifm.vim'
Plug 'ap/vim-css-color'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'christoomey/vim-system-copy'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf.vim'

call plug#end()


" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
 if has('persistent_undo')
   silent !mkdir ~/.vim/backups > /dev/null 2>&1
     set undodir=~/.vim/backups
       set undofile
       endif

" ================ Turn Off Swap Files ==============
 set noswapfile
 set nobackup
 set nowb

" LightLine 
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
set laststatus=2

" NerdTree
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Toggle NerdTree
nnoremap <Leader>f :NERDTreeToggle<Enter>

" nerdtree-git-plugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

" Terminal
"set terminalwinsize=10*10
noremap <Leader>t :terminal<Enter>

" Colorscheme
colorscheme nord
