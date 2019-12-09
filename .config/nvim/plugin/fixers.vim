" Ale stuff
let g:ale_fixers = {
\    'javascript': ['prettier'],
\    'tex': ['textlint'],
\    'go': ['gofmt'],
\    'c': ['clangtidy'],
\    'python': ['autopep8']
\}
let g:ale_linters = {
\    'c': ['ccls'],
\    'bib': ['bibclean'],
\    'fish': ['fish'],
\    'go'  : ['gofmt'],
\    'markdown': ['proselint', 'textlint'],
\    'json': ['jsonlint'],
\    'make': ['checkmake'],
\    'python': ['pylint', 'pydocstyle'],
\    'tex': ['textlint']
\}

let g:ale_fix_on_save = 1
" Letting coc.vim do the completion instead of all
let g:ale_completion_enabled = 0
" use projects prettier and eslint settings
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_javascript_eslint_use_local_config = 1
let g:ale_sign_error = '●'
let g:ale_sign_warning = ""
let g:ale_virtualtext_cursor = 1

" Test support
" Neomake & vim-test
let g:test#javascript#jest#options = '--reporters jest-vim-reporter'
let g:neomake_open_list = 1
let test#strategy = "neomake"
let g:neomake_warning_sign = {
  \   'text': '◉'
  \ }
let g:neomake_error_sign = {
  \   'text': '◉'
  \ }

let g:dispatch_compilers = {'go': 'gotest', 'python': 'pytest'}

let g:TESTING_STATUS = 'passing'

" Show message that tests have started
function! MyOnNeomakeJobStarted() abort
  let g:TESTING_STATUS = 'running'
endfunction

" Show message when all tests are passing
function! MyOnNeomakeJobFinished() abort
  let context = g:neomake_hook_context
  if context.jobinfo.exit_code == 0
    let g:TESTING_STATUS = 'passing'
  endif
  if context.jobinfo.exit_code == 1
    let g:TESTING_STATUS = 'failing'
  endif
endfunction

augroup my_neomake_hooks
  au!
  autocmd User NeomakeJobFinished call MyOnNeomakeJobFinished()
  autocmd User NeomakeJobStarted call MyOnNeomakeJobStarted()
augroup END

"""""""""""""""""""""
" vim-test extensions
"""""""""""""""""""""
let g:test#preserve_screen = 0
