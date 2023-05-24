let g:lightline#ale#indicator_checking = "\uf110 "
let g:lightline#ale#indicator_infos = "\uf129 "
let g:lightline#ale#indicator_warnings = "\uf071 "
let g:lightline#ale#indicator_errors = "\uf05e "
let g:lightline#ale#indicator_ok = "\uf00c "

let g:ale_virtualtext_cursor = 1
let g:ale_list_window_size = 5
let g:airline#extensions#ale#enabled = 1
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'ruby': ['rubocop'],
\}
let g:ale_linters_explicit = 1

let g:ale_ruby_rubocop_executable = 'bundle'

map <leader>cc :ALEToggle<CR>
