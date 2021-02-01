" Ruby filetype configurations

let b:prettier_exec_cmd = "bundle exec rbprettier"

" Quick Prettier + write file
" (<bar> stands in for the | char, used to chain commands)
nnoremap <Leader>pw :exe "silent! Prettier" <bar> w<CR>

