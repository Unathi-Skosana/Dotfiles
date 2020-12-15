if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/lynx/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/lynx/.cache/dein')
    call dein#begin('/home/lynx/.cache/dein')

    " Let dein manage dein
    " Required:
    call dein#add('/home/lynx/.cache/dein/repos/github.com/Shougo/dein.vim')

    " Local plugins
    call dein#local('$VIM_PATH/local')

    " typesetting
    call dein#add('godlygeek/tabular', { 'on_cmd' : [ 'Tab', 'Tabularize' ] , 'augroup' : 'tabular' })
    call dein#add('plasticboy/vim-markdown')
    call dein#add('iamcco/markdown-preview.nvim', {'on_ft': ['markdown', 'pandoc.markdown', 'rmd', 'vimwiki'],
					\ 'build': 'sh -c "cd app & yarn install"' })
    call dein#add('vimwiki/vimwiki')
    call dein#add('lervag/vimtex')

    " golang
    call dein#add('fatih/vim-go')

    " js, jsx & graphql
    call dein#add('jparise/vim-graphql')
    call dein#add('pangloss/vim-javascript')
    call dein#add('chemzqm/vim-jsx-improve')

    " shell
    call dein#add('georgewitteman/vim-fish')
    call dein#add('numirias/semshi')
    call dein#add('z0mbix/vim-shfmt', { 'for': 'sh' })

    " tests, lsp & completion
    call dein#add('janko/vim-test')
    call dein#add('tpope/vim-dispatch')
    call dein#add('neomake/neomake')
    call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})

    " ctags
    call dein#add('universal-ctags/ctags')
    call dein#add('liuchengxu/vista.vim')

    " vim text alignment
    call dein#add('junegunn/vim-easy-align')

    " repeat vim motions
    call dein#add('tpope/vim-repeat',  {'on_map' : '.'})

    " pairs manipulation
    call dein#add('tpope/vim-surround', {'on_map': {'n' : ['cs', 'ds', 'ys'], 'x' : 'S'}, 'depends' : 'vim-repeat'})

    " match pairs
    call dein#add('andymass/vim-matchup')

    " comment plugin
    call dein#add('tpope/vim-commentary', {'on_map': ['gcc', 'gcap', 'gc'], 'on_cmd': ['Commentary']})

    " vim git plugin
    call dein#add('tpope/vim-fugitive',  { 'on_cmd': [ 'Git', 'Gstatus', 'Gwrite', 'Glog', 'Gcommit', 'Gblame', 'Ggrep', 'Gdiff', ] })

    " save vim sessions
    call dein#add('tpope/vim-obsession')

    " fuzzy finder
    call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
    call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

    " auto closing pairs
    call dein#add('Raimondi/delimitMate', {'on_map' : { 'i' : ['(', '[', '{', '$' ] }})

    " snippets
    call dein#add('SirVer/ultisnips', {'on_map' : { 'i' : ['<c-j>', '<c-k>'] }})
    call dein#add('honza/vim-snippets')

    " navigate tmux vim splits
    call dein#add('christoomey/vim-tmux-navigator')

    " collecting stats for time spent on various projects
    call dein#add('wakatime/vim-wakatime')

    " Clear highlight search automatically for you
    call dein#add('romainl/vim-cool')

    " text objects
    call dein#add('kana/vim-operator-user')
    call dein#add('kana/vim-textobj-user')
    call dein#add('kana/vim-operator-replace', {'on_map': { 'vnx': '<Plug>' }})
    call dein#add('jeetsukumaran/vim-pythonsense')

    " theme
    call dein#add('ghifarit53/tokyonight-vim')
    call dein#add('lifepillar/vim-colortemplate')

    " indent markers
    call dein#add('Yggdroot/indentLine')

    " git gutter
    call dein#add('airblade/vim-gitgutter')

    " start screen
    call dein#add('mhinz/vim-startify')

    " undo history
    call dein#add('simnalamburt/vim-mundo', {'on_cmd': ['MundoHide', 'MundoShow', 'MundoToggle']})

    " highlight color codes
    call dein#add('norcalli/nvim-colorizer.lua', {
          \ 'on_event': 'FileType',
          \ 'hook_source': 'luafile ~/.config/nvim/colorizer.lua'
          \ })

    " file exploxer
    call dein#add('ms-jpq/chadtree', {
          \ 'branch': 'chad',
          \ 'do': ':UpdateRemotePlugins'
          \ })

    " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif

command! -nargs=1 PacAdd call dein#add("<qargs>")
command! PacInstall call dein#install()
command! -bang PacUpdate call dein#update()
command! PacClean call dein#recache_runtimepath()
command! PacStatus call dein#status()


" vimtex {{
  let g:tex_flavor = "latex"
  let g:tex_conceal = 0
  let b:delimitMate_quotes = "\" ' $"
  let b:delimitMate_smart_matchpairs = '^\%(\w\|\!\|[£]\|[^[:space:][:punct:]]\)'

  let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : 'build',
  \ }

  " TOC settings
  let g:vimtex_toc_config = {
      \ 'name' : 'TOC',
      \ 'layers' : ['content', 'todo', 'include'],
      \ 'resize' : 1,
      \ 'split_width' : 30,
      \ 'todo_sorted' : 0,
      \ 'show_help' : 1,
      \ 'show_numbers' : 1,
      \ 'mode' : 2,
  \ }
" }}

" delimate {{{
  let b:delimitMate_quotes = "\" ' $"
  let b:delimitMate_smart_matchpairs = '^\%(\w\|\!\|[£]\|[^[:space:][:punct:]]\)'
  syn match math '\\$[^$].\{-}\$'
  syn region match start=/\\$\\$/ end=/\\$\\$/

" }}}

" vim-cool {{{
let g:CoolTotalMatches = 1
" }}}

" markdown {{{
  let g:vim_markdown_math = 1
  let g:vim_markdown_frontmatter = 1
  let g:vim_markdown_strikethrough = 1
  let g:vim_markdown_autowrite = 1
  let g:vim_markdown_folding_style_pythonic = 1
  let g:vim_markdown_follow_anchor = 1
  let g:vim_markdown_math = 1
  let g:vim_markdown_frontmatter = 1
  let g:vim_markdown_toml_frontmatter = 1
  let g:vim_markdown_toml_frontmatter = 1
  let g:vim_markdown_strikethrough = 1
  let g:vim_markdown_new_list_item_indent = 2
  let g:vim_markdown_no_extensions_in_markdown = 1
  let g:vim_markdown_autowrite = 1
" }}}

" markdown preview {{{
  " set to 1, nvim will open the preview window after entering the markdown buffer
  " default: 0
  let g:mkdp_auto_start = 0

  " set to 1, the nvim will auto close current preview window when change
  " from markdown buffer to another buffer
  " default: 1
  let g:mkdp_auto_close = 0

  " set to 1, the vim will refresh markdown when save the buffer or
  " leave from insert mode, default 0 is auto refresh markdown as you edit or
  " move the cursor
  " default: 0
  let g:mkdp_refresh_slow = 0

  " set to 1, the MarkdownPreview command can be use for all files,
  " by default it can be use in markdown file
  " default: 0
  let g:mkdp_command_for_global = 0

  " set to 1, preview server available to others in your network
  " by default, the server listens on localhost (127.0.0.1)
  " default: 0
  let g:mkdp_open_to_the_world = 0

  " use custom IP to open preview page
  " useful when you work in remote vim and preview on local browser
  " more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
  " default empty
  let g:mkdp_open_ip = ''

  " specify browser to open preview page
  " default: ''
  let g:mkdp_browser = 'firefox'

  " set to 1, echo preview page url in command line when open preview page
  " default is 0
  let g:mkdp_echo_preview_url = 0

  " a custom vim function name to open preview page
  " this function will receive url as param
  " default is empty
  let g:mkdp_browserfunc = ''

  " options for markdown render
  " mkit: markdown-it options for render
  " katex: katex options for math
  " uml: markdown-it-plantuml options
  " maid: mermaid options
  " disable_sync_scroll: if disable sync scroll, default 0
  " sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
  "   middle: mean the cursor position alway show at the middle of the preview page
  "   top: mean the vim top viewport alway show at the top of the preview page
  "   relative: mean the cursor position alway show at the relative positon of the preview page
  " hide_yaml_meta: if hide yaml metadata, default is 1
  " sequence_diagrams: js-sequence-diagrams options
  let g:mkdp_preview_options = {
      \ 'mkit': {},
      \ 'katex': {},
      \ 'uml': {},
      \ 'maid': {},
      \ 'disable_sync_scroll': 0,
      \ 'sync_scroll_type': 'middle',
      \ 'hide_yaml_meta': 1,
      \ 'sequence_diagrams': {},
      \ 'flowchart_diagrams': {}
      \ }

  " use a custom markdown style must be absolute path
  " like '/Users/username/markdown.css' or expand('~/markdown.css')
  let g:mkdp_markdown_css = '/home/lynx/.pandoc/markdown.css'

  " use a custom highlight style must absolute path
  " like '/Users/username/highlight.css' or expand('~/highlight.css')
  let g:mkdp_highlight_css = ''

  " use a custom port to start server or random for empty
  let g:mkdp_port = ''

  " preview page title
  " ${name} will be replace with the file name
  let g:mkdp_page_title = '「${name}」'
" }}}
"

" fixers {{{
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

  let g:test#preserve_screen = 0
" }}}
"
" go {{{
  let g:go_fmt_command = "goimports"
  let g:go_highlight_types = 1
  let g:go_highlight_fields = 1
  let g:go_highlight_functions = 1
  let g:go_highlight_function_calls = 1
  let g:go_highlight_methods = 1
  let g:go_highlight_structs = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_extra_types = 1
  let g:go_highlight_build_constraints = 1
  let g:go_highlight_generate_tags = 1
  "disable use K to run godoc
  let g:go_doc_keywordprg_enabled = 0
  let g:go_def_mapping_enabled = 0

" }}}

" fzf {{{
  " Always enable preview window on the right with 60% width
  let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.6 } }

  " [Buffers] Jump to the existing window if possible
  let g:fzf_buffers_jump = 1

  " [[B]Commits] Customize the options used by 'git log':
  let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

  " [Tags] Command to generate tags file
  let g:fzf_tags_command = 'ctags -R'

  let g:fzf_commands_expect = 'alt-enter,ctrl-x'

  function! s:fzf_statusline()
    " Override statusline as you like
    highlight fzf1 ctermfg=161 ctermbg=251
    highlight fzf2 ctermfg=23 ctermbg=251
    highlight fzf3 ctermfg=237 ctermbg=251
    setlocal statusline=%#fzf1#\ $\ %#fzf2#fz%#fzf3#f
  endfunction

  autocmd! User FzfStatusLine call <SID>fzf_statusline()

" }}}


" gitgutter {{{
  let g:gitgutter_sign_added = '+'
  let g:gitgutter_sign_modified = '~'
  let g:gitgutter_sign_removed = '-'
  let g:gitgutter_sign_removed_first_line = '-'
  let g:gitgutter_sign_modified_removed = '~'

  highlight GitGutterDelete guifg=#F56565 guibg=NONE
  highlight GitGutterAdd    guifg=#48BB78 guibg=NONE
  highlight GitGutterChange guifg=#ECC94B guibg=NONE

" }}}

" indentline {{{
  let g:indentline_enabled = 1
  let g:indentline_char='┆'
  let g:indentLine_fileTypeExclude = ['defx', 'denite','startify','tagbar','vista_kind','vista']
  let g:indentLine_concealcursor = 'niv'
  let g:indentLine_color_term = 96
  let g:indentLine_color_gui= '#725972'
  let g:indentLine_showFirstIndentLevel =1

  autocmd FileType markdown let g:indentLine_enabled=0

" }}}

" vimwiki {{{
  let default_wiki = {}
  let default_wiki.path = '~/Dropbox/wiki/'
  let default_wiki.syntax = 'markdown'
  let default_wiki.ext = '.md'
  let default_wiki.auto_diary_index = 0

  let code_wiki = {}
  let code_wiki.path = '~/Dropbox/wiki/coding'
  let code_wiki.syntax = 'markdown'
  let code_wiki.ext = '.md'
  let code_wiki.auto_diary_index = 1

  let personal_wiki = {}
  let personal_wiki.path = '~/Dropbox/wiki/personal'
  let personal_wiki.syntax = 'markdown'
  let personal_wiki.ext = '.md'
  let personal_wiki.auto_diary_index = 1

  let academics_wiki = {}
  let academics_wiki.path = '~/Dropbox/wiki/academics'
  let academics_wiki.syntax = 'markdown'
  let academics_wiki.ext = '.md'
  let academics_wiki.auto_diary_index = 1

  let books_wiki = {}
  let books_wiki.path = '~/Dropbox/wiki/books'
  let books_wiki.syntax = 'markdown'
  let books_wiki.ext = '.md'
  let books_wiki.auto_diary_index = 1

  let cheats_wiki = {}
  let cheats_wiki.path = '~/Dropbox/wiki/cheats'
  let cheats_wiki.syntax = 'markdown'
  let cheats_wiki.ext = '.md'
  let cheats_wiki.auto_diary_index = 1

  let g:vimwiki_table_mappings = 0
  let g:vimwiki_global_ext = 0
  let g:vimwiki_list = [default_wiki,books_wiki,code_wiki,personal_wiki,academics_wiki,cheats_wiki]
  let g:taskwiki_markup_syntax = 'markdown'
  let g:vimwiki_ext2syntax = {}

" }}}

" startify {{{
  let g:startify_bookmarks=['~/.config/alacritty/alacritty.yml', '~/.config/nvim/init.vim', '~/repositories/', '~/Dropbox/']
  let g:startify_lists = [
            \ { 'type': 'sessions',  'header': ['   Sessions']       },
            \ { 'type': 'files',     'header': ['   Recent Files']   },
            \ { 'type': 'dir',       'header': ['   Recent Files in: '. getcwd()] },
            \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
            \ { 'type': 'commands',  'header': ['   Commands']       },
            \ ]
  let g:startify_custom_header = systemlist('fortune -s | cowsay -f (cowsay -l | tail -n +2  | tr " " "\n" | shuf -n 1) | lolcat')
" }}}

" vista {{{
  " This could make the display more compact or more spacious.
  " e.g., more compact: ["▸ ", ""]
  " Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
  let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

  " Executive used when opening vista sidebar without specifying it.
  " See all the avaliable executives via `:echo g:vista#executives`.
  let g:vista_default_executive = 'ctags'

  " Set the executive for some filetypes explicitly. Use the explicit executive
  " instead of the default one for these filetypes when using `:Vista` without
  " specifying the executive.
  let g:vista_executive_for = {
    \ 'cpp': 'vim_lsp',
    \ 'php': 'vim_lsp',
    \ }

  " Declare the command including the executable and options used to generate ctags output
  " for some certain filetypes.The file path will be appened to your custom command.
  " For example:
  let g:vista_ctags_cmd = {
        \ 'haskell': 'hasktags -x -o - -c',
        \ }

  " To enable fzf's preview window set g:vista_fzf_preview.
  " The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
  " For example:
  let g:vista_fzf_preview = ['right:50%']

  " Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
  let g:vista#renderer#enable_icon = 1

  " The default icons can't be suitable for all the filetypes, you can extend it as you wish.
  let g:vista#renderer#icons = {
  \   "function": "\uf794",
  \   "variable": "\uf71b",
  \  }

  let g:vista#renderer#icons = {
        \ 'member': '',
        \ }

  " Do not echo message on command line
  let g:vista_echo_cursor = 0
  " Stay in current window when vista window is opened
  let g:vista_stay_on_open = 0

  augroup matchup_conf
    autocmd!
    " Double mouse click to go to a tag
    autocmd FileType vista* nnoremap <buffer> <silent>
          \ <2-LeftMouse> :<C-U>call vista#cursor#FoldOrJump()<CR>
    " Quit Neovim if vista window is the only window
    autocmd BufEnter * call s:close_vista_win()
  augroup END

  nnoremap <silent> <Space>t :<C-U>Vista!!<CR>

  function! s:close_vista_win() abort
    if winnr('$') == 1 && getbufvar(bufnr(), '&filetype') ==# 'vista'
      quit
    endif
  endfunction

" }}}
