set wrap
set linebreak
set textwidth=0
set wrapmargin=0
"
" Rebind uppercase versions of h,l to do 'extreme' movements
nnoremap H ^
nnoremap L $

" Move by visual line
nnoremap j gj
nnoremap k gk

nnoremap <silent> <buffer> <localleader>f :Goyo 75%x100%<CR>

" vim:set ft=vim et sw=2:
