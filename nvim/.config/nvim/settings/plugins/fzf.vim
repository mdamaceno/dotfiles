" better layout for fzf
" let $FZF_DEFAULT_OPTS .= ' --layout=reverse'
" let g:fzf_vim.buffers_jump = 1

" Find file
nnoremap <c-p> :Files<cr>
nnoremap <c-g> :GFiles<cr>

" Search in files
map <c-i> :Ag<cr>

