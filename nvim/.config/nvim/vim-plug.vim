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
" Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/neovim/nvim-lspconfig'
Plug 'https://github.com/SirVer/ultisnips'
Plug 'https://github.com/honza/vim-snippets'
Plug 'https://github.com/alvan/vim-closetag'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/rrethy/vim-illuminate'
Plug 'https://github.com/dyng/ctrlsf.vim'
" Plug 'https://github.com/github/copilot.vim'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/joerdav/templ.vim'
Plug 'https://github.com/neovim/nvim-lspconfig'

Plug 'https://github.com/hrsh7th/cmp-nvim-lsp'
Plug 'https://github.com/hrsh7th/cmp-buffer'
Plug 'https://github.com/hrsh7th/cmp-path'
Plug 'https://github.com/hrsh7th/cmp-cmdline'
Plug 'https://github.com/hrsh7th/nvim-cmp'
Plug 'https://github.com/zbirenbaum/copilot.lua'
Plug 'https://github.com/zbirenbaum/copilot-cmp'
Plug 'https://github.com/onsails/lspkind.nvim'

" For vsnip users.
" Plug 'hrsh7th/cmp-vsnip'
" Plug 'hrsh7th/vim-vsnip'
call plug#end()

