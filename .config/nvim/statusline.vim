" status line colors {{{
hi LineNr         guibg=NONE
hi PrimaryBlock   guibg=NONE     guifg=#4A5568
hi ModeBlock      guibg=NONE     guifg=#FBD38D
hi SecondaryBlock guibg=NONE     guifg=#4A5568
hi TeritaryBlock  guibg=NONE     guifg=#FC8181
hi Blanks         guibg=NONE     guifg=NONE
hi SpellBad       guibg=NONE     guifg=#F56565
hi ColorColumn    guibg=NONE     guifg=#718096
hi VertSplit      guibg=NONE     guifg=#718096
hi StatusLineNC   guibg=NONE     guifg=#718096
hi Folded         guibg=NONE
hi SignColumn     guibg=NONE

" }}}

" status line {{{
let g:currentmode={
    \ 'n'  : 'N ',
    \ 'no' : 'NO',
    \ 'v'  : 'V ',
    \ 'V'  : 'V ',
    \ ''  : 'V ',
    \ '' : 'V ',
    \ 's'  : 'S ',
    \ 'S'  : 'S ',
    \ '' : 'S ',
    \ 'i'  : 'I ',
    \ 'R'  : 'R ',
    \ 'Rv' : 'V ',
    \ 'c'  : 'C ',
    \ 'cv' : 'V EX ',
    \ 'ce' : 'E ',
    \ 'r'  : 'P ',
    \ 'rm' : 'M ',
    \ 'r?' : 'C ',
    \ '!'  : 'S ',
    \ 't'  : 'T '}

set statusline=
set statusline+=%#ModeBlock#
set statusline+=\ %{g:currentmode[mode()]}
set statusline+=%#TeritaryBlock#
set statusline+=\ %f\ 
set statusline+=%M\ 
set statusline+=%#Blanks#
set statusline+=%=
set statusline+=%#PrimaryBlock#
set statusline+=\ %Y\ 
set statusline+=%#SecondaryBlock#
set statusline+=\ %p

"}}}

" vim:set ft=vim et sw=2:
