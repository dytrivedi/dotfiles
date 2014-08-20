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
call vundle#rc()
"let $GIT_SSL_NO_VERIFY = 'true' "required in case of some RHEL boxes
 let g:airline_left_sep = ''
 let g:airline_left_alt_sep = ''
 let g:airline_right_sep = ''
 let g:airline_right_alt_sep = ''
 let g:airline_theme = 'powerlineish'
 
"Bundles
"Git Repos
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
"Bundle 'wincent/Command-T'
Bundle 'Lokaltog/vim-easymotion'
"Bundle 'Lokaltog/vim-powerline'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'godlygeek/tabular'
Bundle 'Raimondi/delimitMate'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-surround'
Bundle 'myusuf3/numbers.vim'
Bundle 'lukaszkorecki/workflowish'
Bundle 'pangloss/vim-javascript'
"Bundle 'mattn/zencoding-vim'
Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'sleistner/vim-jshint'
Bundle 'scrooloose/syntastic'
"Bundle 'hallettj/jslint.vim'
"Themes
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Bundle 'sjl/badwolf'
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle 'jnurmine/Zenburn'
Bundle 'cschlueter/vim-wombat'
"Vim Scripts
Bundle 'bufexplorer.zip'
Bundle 'matchit.zip'
"Non Github Repos
Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on "Required for Vundle

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
