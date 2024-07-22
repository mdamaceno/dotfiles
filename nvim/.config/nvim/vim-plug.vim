let g:ale_disable_lsp = 1

call plug#begin('~/.cache/nvim/plugged')
" Theme
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

Plug 'https://github.com/junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/dense-analysis/ale'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/editorconfig/editorconfig-vim'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/jlanzarotta/bufexplorer'
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/SirVer/ultisnips'
Plug 'https://github.com/honza/vim-snippets'
Plug 'https://github.com/alvan/vim-closetag'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/rrethy/vim-illuminate'
Plug 'https://github.com/dyng/ctrlsf.vim'
Plug 'https://github.com/github/copilot.vim'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/joerdav/templ.vim'
call plug#end()

