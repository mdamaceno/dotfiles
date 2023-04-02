" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Switch splits easily
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize panel
nnoremap <silent> <Leader>j :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>k :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent><Leader>l :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent><Leader>h :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

" Remap :W to be like :w
command!  W :w

" Remap :Q to be like :q
command!  Q :q

" Terminal
nnoremap <leader>tm :terminal bash<CR>

" Open split
nnoremap <silent> <Leader>ov :exe "vsplit"<CR>
nnoremap <silent> <Leader>oh :exe "split"<CR>
