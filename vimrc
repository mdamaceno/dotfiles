call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'StanAngeloff/php.vim'
Plug 'shawncplus/phpcomplete.vim'
Plug 'ervandew/supertab'
Plug 'posva/vim-vue'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'jwalton512/vim-blade'
Plug 'tpope/vim-liquid'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'garbas/vim-snipmate'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-bundler'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/syntastic'
Plug 'vim-scripts/tlib'
Plug 'tpope/vim-commentary'
Plug 'nono/vim-handlebars'
Plug 'scrooloose/nerdtree'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'jwalton512/vim-blade'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'ryanoasis/vim-devicons'
Plug 'christoomey/vim-system-copy'
call plug#end()

" Transparent background in VIM
hi Normal ctermbg=none
hi NonText ctermbg=none
hi LineNr ctermbg=none

let g:enable_bold_font = 1
set encoding=utf8

let g:airline_theme="raven"
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_vimfiler = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_enable_flagship_statusline = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:DevIconsEnableFoldersOpenClose = 1

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 10

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = '⮀'
"let g:airline_left_sep = ''
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
"let g:airline_right_sep = ''
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

" Syntastic settings
let g:syntastic_quiet_messages = {
        \ "!level":  "errors",
        \ "type":    "style",
        \ "regex":   '.*',
        \ "file:p":  '.*' }

" Settings for TMUX
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" let g:onedark_termcolors=256

" set t_Co=256
syntax enable

" let g:seoul256_background = 235
" set background=dark
colorscheme onedark

set nocompatible
set linespace=0

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
set cursorline
set cursorcolumn
set autoread
set relativenumber
set list
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<

" Setup for pasting in insert mode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

set shiftwidth=2
set softtabstop=2
set expandtab

" Shortcuts to quit VIM
inoremap <C-q> <esc>:qa!<cr>               " quit discarding changes
nnoremap <C-q> :qa!<cr>

" Files in buffer
nnoremap <silent> <F4> :BufExplorer<CR>
nnoremap <silent> <s-F4> :ToggleBufExplorer<CR>
nnoremap <C-t><C-w> :close<CR>

" Go to the directory overview keeping the file in buffer
nnoremap <C-E><C-X> :Ex.<CR>

" Ctrl- P mapping and two custom split keymappings (https://github.com/kien/ctrlp.vim)
let g:ctrlp_map = '<c-p>'
nmap <c-n>s :split<CR><c-w>j<c-p>
nmap <c-n>v :vsplit<CR><c-w>l<c-p>

" Copy and paste
if has('clipboard') && !has('gui_running')
  vnoremap <C-c> "+y
  vnoremap <C-x> "+d
  vnoremap <C-v> "+p
  inoremap <C-v> <C-r><C-o>+
endif

" NERDTree setup
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" netrw
" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
" let g:netrw_winsize = 20
" let g:netrw_list_hide= '.*\.swp$,\~$,\.orig$'
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

" Blade Laravel
let g:blade_custom_directives = ['datetime', 'javascript']
let g:blade_custom_directives_pairs = {
      \   'markdown': 'endmarkdown',
      \   'cache': 'endcache',
      \ }

