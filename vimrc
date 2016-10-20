call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'junegunn/vim-easy-align'
Plug 'sickill/vim-monokai'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'StanAngeloff/php.vim'
Plug 'shawncplus/phpcomplete.vim'
Plug 'ervandew/supertab'
Plug 'posva/vim-vue'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'jwalton512/vim-blade'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-liquid'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'garbas/vim-snipmate'
Plug 'thoughtbot/vim-rspec'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-bundler'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/syntastic'
Plug 'vim-scripts/tlib'
Plug 'tpope/vim-commentary'
Plug 'nono/vim-handlebars'
call plug#end()

set t_Co=256
syntax enable
set background=dark
colorscheme gruvbox

set nocompatible
filetype indent plugin on
set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
set mouse=a
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200
set shiftwidth=4
set softtabstop=4
set expandtab
set cursorline
set cursorcolumn

set list
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<,space:·

" Paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

set shiftwidth=2
set softtabstop=2
set expandtab

inoremap <C-q> <esc>:qa!<cr>               " quit discarding changes
nnoremap <C-q> :qa!<cr>

nnoremap <silent> <F4> :BufExplorer<CR>
nnoremap <silent> <s-F4> :ToggleBufExplorer<CR>
