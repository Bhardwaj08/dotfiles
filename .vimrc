set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdTree'
Plugin 'terryma/vim-multiple-cursors'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'dracula/vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme vividchalk
"colo default
syntax on                  " Enable syntax highlighting.
set backspace=2            " Make the backspace behave as most applications.
set autoindent             " Use current indent for new lines.
set display=lastline       " Show as much of the line as will fit.
set wildmenu               " Better tab completion in the commandline.
set wildmode=list:longest  " List all matches and complete to the longest match.
set showcmd                " Show (partial) command in bottom-right.
set smarttab               " Backspace removes 'shiftwidth' worth of spaces.
set wrap                   " Wrap long lines.
set laststatus=2           " Always show the statusline.
set ruler                  " Show the ruler in the statusline.
set textwidth=80           " Wrap at n characters.
set nrformats-=octal       " Remove octal support from 'nrformats'.
set tabstop=2              " Size of a Tab character.
set shiftwidth=2          " Use same value as 'tabstop'.
set softtabstop=-1         " Use same value as 'shiftwidth'.
set number
set expandtab
set ai
set hlsearch
set ruler
"highlight Comment ctermfg=green

inoremap {<cr> {<cr>}<C-O><S-O>
inoremap (<cr> (<cr>)<C-O><S-O>
inoremap [<cr> [<cr>]<C-O><S-O>


"let g:ycm_global_ycm_extra_conf = /"~/.vim/.ycm_extra_conf.py"
let mapleader="-"
"Key Mappings
"1.NERDTree KeyMapping
silent! nmap <C-f> :NERDTreeToggle<CR>
silent! map <F5> :NERDTreeFind<CR>

let g:NERDTreeMapActivateNode="<F5>"
let g:NERDTreeMapPreview="<F4>"

"Basic Utilities
nnoremap <leader>d dd  
nnoremap <leader>c ddO
"Enclose word in single & double quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
"Jump to start of line
"nnoremap H ^              
"Jump to end of line
nnoremap L g_
"Remap <esc> key to other key  
"inoremap <c-1> <esc>

imap <c-c> <esc>yyi
imap <c-v> <esc>pi
"Edit my $VIMRC
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"Source my $VIMRC
nnoremap <leader>sv :source $MYVIMRC<cr>
imap <c-d> <esc>ddi  

"Using abbreviations for fixing typos
"iabbrev adn and
"iabbrev waht what
"iabbrev tehn then
iabbrev @@ bhardwaj0841998@gmail.com

"autocommands
autocmd BufNewFile *.txt :write
autocmd BufWritePre,BufRead *.html :normal gg=G
autocmd BufNewFile,BufRead .*html setlocal nowrap
autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
autocmd FileType javascript iabbrev <buffer> iff if()<left>
autocmd FileType python iabbrev <buffer> iff if: <left>


if $TERM == "xterm-256color"
  set t_Co=256
endif

"nmap <c-u> <esc>
"vmap <c-u> <esc>Ui
"echo \">^.^<"
