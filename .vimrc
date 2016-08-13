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
"let $GIT_SSL_NO_VERIFY = 'true' "required in case of some RHEL boxes
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_theme = 'powerlineish'

"Vundle Plugins
"Git Repos
Plugin 'gmarik/vundle'
Plugin 'kien/ctrlp.vim'
"Plugin 'wincent/Command-T'
Plugin 'Lokaltog/vim-easymotion'
"Plugin 'Lokaltog/vim-powerline'
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
"Plugin 'mattn/zencoding-vim'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'sleistner/vim-jshint'
Plugin 'scrooloose/syntastic'
Plugin 'luochen1990/rainbow'
"Plugin 'hallettj/jslint.vim'
"Themes
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'sjl/badwolf'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'
Plugin 'cschlueter/vim-wombat'
"Vim Scripts
Plugin 'bufexplorer.zip'
Plugin 'matchit.zip'
"Non Github Repos
Plugin 'git://git.wincent.com/command-t.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


nmap <leader>l :set list!<CR>
nnoremap <silent> <leader>tt :TagbarToggle<CR>
nmap <c-b> :CtrlPBuffer<CR>
set ls=2
set backspace=indent,eol,start
set vb t_vb=
syntax on
set background=light
colorscheme Tomorrow 
"let g:zenburn_force_dark_Background=1
"let g:solarized_termcolors=256
set guifont=Inconsolata:h14
"let g:user_zen_settings = {
"\ 'indentation':'    ',
"\}
"let g:user_zen_expandabbr_key='<c-e>'
"let g:user_zen_complete_tag = 1
let g:rainbow_active = 1

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
