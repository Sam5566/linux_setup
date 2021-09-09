" Tab
setlocal et sta sw=4 sts=4
set expandtab
retab

" Fold
set foldmethod=indent

nnoremap <space> za
vnoremap <space> zf

" execute scripts in vim ------------
map <F9> :call PRUN()<CR>
func! PRUN()
    exec "w"
    exec "!python %"
endfunc

map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

let b:syntastic_mode = "passive"
let g:syntastic_python_checkers=['pyflakes']
