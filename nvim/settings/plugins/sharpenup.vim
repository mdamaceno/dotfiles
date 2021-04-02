" Ensure that `g:sharpenup_statusline_opts` is set _before_
" `sharpenup#statusline#Build()` is called
let g:sharpenup_statusline_opts = { 'Highlight': 0 }
let g:lightline = {
\ 'active': {
\   'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding', 'filetype', 'sharpenup']]
\ },
\ 'inactive': {
\   'right': [['lineinfo'], ['percent'], ['sharpenup']]
\ },
\ 'component': {
\   'sharpenup': sharpenup#statusline#Build()
\ }
\}

" augroup lightline_integration
"   autocmd!
"   autocmd User OmniSharpStarted,OmniSharpReady,OmniSharpStopped call lightline#update()
" augroup END

