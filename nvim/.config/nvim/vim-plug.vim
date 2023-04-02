let g:ale_disable_lsp = 1

call plug#begin('~/.cache/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'jlanzarotta/bufexplorer'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'alvan/vim-closetag'
" Plug 'raimondi/delimitmate'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
" Plug 'chrisbra/Colorizer'
Plug 'ryanoasis/vim-devicons'
" Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
" Plug 'arnaud-lb/vim-php-namespace'
Plug 'rrethy/vim-illuminate'
" Plug 'PhilRunninger/nerdtree-buffer-ops'
" Plug 'joshdick/onedark.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim'
" Plug 'arp242/confirm_quit.vim'
" Plug 'jpo/vim-railscasts-theme'
" Plug 'IrenejMarc/vim-mint'
" Plug 'nickspoons/vim-sharpenup'
" Plug 'OmniSharp/omnisharp-vim'
call plug#end()

