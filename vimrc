set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" All plugins go here!
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'bling/vim-airline'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary' " gcc to comment a line
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-sensible'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-bufferline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'haya14busa/incsearch.vim'
Bundle 'lsdr/monokai'
Plugin 'tomasr/molokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Disable folding in Vim Markdown syntax
let g:vim_markdown_folding_disabled=1

" Fix paste stuff?
set clipboard=unnamed

" enables syntax highlighting
syntax on

" Turns on line numbers
set number

" Set mouse to always available
set mouse=a

" Set the paste option to 'on'
set paste

" Set tabs to 2 spaces and automatic
set autoindent
set tabstop=2
set expandtab
set shiftwidth=2

let g:solarized_termcolors=256
colorscheme solarized
if has('gui_running')
  set background=dark
else
  set background=dark
endif
"set t_Co=16 " Set term colors to 16 instead of 8

" Set automatic filetype detection on
filetype on

" Keep 500 lines of command history
set history=500

" Set the information in the statusbar
" set statusline=%F%m%r%h%w\ FORMAT=%{&ff}\ TYPE=%Y\ POS=%04l,%04v%p%%\ LEN=%L

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" set statusline+=%{fugitive#statusline()}

" Set the statusline to always be shown
set laststatus=2

" Show the cursor position at all times
set ruler

" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase

" Write backup files to a specific directory
set backup
set backupdir=~/.tmp

" Because I use .md for Markdown files
au BufRead,BufNewFile *.md set filetype=markdown
" Because I use .rc for Metasploit ruby scripts
au BufRead,BufNewFile *.rc set filetype=ruby
autocmd BufEnter Makefile setlocal noexpandtab

" Multi-line navigation:
nnoremap k gk
nnoremap <Up> gk
nnoremap j gj
nnoremap <Down> gj

autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.markdown setlocal spell

"execute pathogen#infect()

" Timestamp TODO: Fix the format to something else
" Fri 15 Aug 2014 10:45:11 AM EDT (current)
" 2014-08-15_10-45-11 would be ideal
nnoremap <F5> "=strftime("%c")<CR>P
inoremap <F5> <C-R>=strftime("%c")<CR>

" CtrlP config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" Syntastic config
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" IncSearch configuration
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)




" This is supposed to fix the issue of Vim colors being broken in Tmux, 
" but doesn't appear to be working
if exists('$TMUX')
  set term=screen-256color
endif

" Font Stuff
if has('gui running')
  set guifont=Droid\ Sans\ Mono\ 12
else
  set guifont=Droid\ Sans\ Mono\ 12
endif
