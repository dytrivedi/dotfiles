set nocompatible
scriptencoding utf-8
set number
set t_Co=256
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set incsearch
set hlsearch
set showmatch
set ignorecase
set smartcase
set list
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
"set shell=/bin/bash

if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

"Vundle Stuff
filetype off "Required for Vundle
set rtp+=~/.vim/vundle/
call vundle#begin()
"let $GIT_SSL_NO_VERIFY='true' "required in case of some RHEL boxes

"let g:airline#extensions#tabline#enabled=1
"let g:airline#extensions#tabline#show_tabs=1
"let g:airline#extensions#tabline#show_buffers=1
"let g:airline_skip_empty_sections=1
let g:airline_powerline_fonts=1
let g:airline_theme='gruvbox'

"Vundle Plugins
"Git Repos
Plugin 'gmarik/vundle'
Plugin 'kien/ctrlp.vim'
"Plugin 'wincent/Command-T'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'Raimondi/delimitMate'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'myusuf3/numbers.vim'
Plugin 'lukaszkorecki/workflowish'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'luochen1990/rainbow'
Plugin 'Yggdroot/indentLine'
Plugin 'kshenoy/vim-signature'
Plugin 'valloric/youcompleteme'
"Themes
Plugin 'morhetz/gruvbox'
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
"Vim Scripts
Plugin 'bufexplorer.zip'
Plugin 'matchit.zip'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set ls=2
set backspace=indent,eol,start
set vb t_vb=
syntax on

let mapleader=','
nmap <leader>l :set list!<CR>
nnoremap <silent> <leader>tt :TagbarToggle<CR>
nnoremap <silent> <leader>il :IndentLinesToggle<CR>:LeadingSpaceToggle<CR>
nmap <c-b> :CtrlPBuffer<CR>
nnoremap <Leader>a :Tabularize /
vnoremap <Leader>a :Tabularize /

set background=light
colorscheme gruvbox
let g:gruvbox_contrast_light='soft'
set guifont=Inconsolata\ for\ Powerline:h16
highlight Comment cterm=italic

"let g:indentLine_char="│"
"let g:indentLine_leadingSpaceEnabled=1
"let g:indentLine_faster=1
let g:indentLine_leadingSpaceChar='·'
let g:indentLine_enabled=0

let g:rainbow_active=1

if has('cmdline_info')
    set ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
    set showcmd
endif
if has('statusline')
    set laststatus=2
    set statusline=%<%f\
    set statusline+=%w%h%m%r
    set statusline+=\ [%{&ff}/%Y]
    set statusline+=\ [%{getcwd()}]
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%
endif
set showmode
set cursorline
"set colorcolumn=85
