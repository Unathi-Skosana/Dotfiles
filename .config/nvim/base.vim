scriptencoding UTF-8

	" Required {{{
	syntax on
	set nocompatible
    if has("autocmd")
      filetype plugin indent on
    endif
" }}}

" leaders {{{
	let mapleader=" "
	let maplocalleader="-"
" }}}

" Completion behaviour {{{
	set completeopt-=preview  " Disable the preview window
	set completeopt+=menuone  " Show menu even if there is only one item
	set pumheight=10  " Maximum number of items to show in popup menu

	" Insert mode key word completion setting
	set complete+=kspell complete-=w complete-=b complete-=u complete-=t
" }}}

" Misc {{{
	" Search ignoring case & Keep case when searching with *
	set ignorecase smartcase

	" Character to show before the lines that have been soft-wrapped
	set showbreak=↪ 

	" Do not show "match xx of xx" and other messages during auto-completion
	set shortmess+=c

	" fish shell as default
	set shell=/usr/bin/fish

	" General tab settings
    set textwidth=80
	set tabstop=4       " number of visual spaces per TAB
	set softtabstop=4   " number of spaces in tab when editing
	set shiftwidth=4    " number of spaces to use for autoindent
	set shiftround      " round indent to multiple of shiftwidth
	set expandtab       " expand tab to spaces so that tabs are spaces

    " auto and smart indents
    set smartindent
    set smarttab
    set autoindent
    set wrap linebreak

    " enhanced auto completion
    set wildmenu

    " do not redraw screen while executing macros
    set lazyredraw

	" spelling language
	set spell spelllang=en_us

	" Use list mode and customized list chars
	set list
	set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<

    " do not use selection clipboard
	set clipboard=unnamedplus

	" The number of command and search history to keep
	set history=500

	"     The number of seconds of inactivity before swap file is written to disk
	set updatetime=750

	" show numbers relative to current position
	set relativenumber
	"
	" Persistent undo even after you close a file and re-open it
	set undofile

    " Ask for confirmation when handling unsaved or read-only files
	set confirm

	" autowrite file on certain circumstances
	set autowrite

	" folding method
	set foldmethod=marker

	" open folds by default
	set nofoldenable

	" set fold level
	set foldlevel=5

	" deepest fold nest
	set foldnestmax=5

	" Do not show mode on command line since vim-airline can show it
	set noshowmode

 " List all matches and complete first match.
	set wildmode=list:full

	" don't continue comments on newline
	set formatoptions-=o

	" normal splits
	set splitbelow splitright

    " enable setting title
    set title

    " configure title to look like: Vim /path/to/file
    set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70

" }}}

" Abbreviations {{{
	cnoreabbrev W! w!
	cnoreabbrev Q! q!
	cnoreabbrev Qall! qall!
	cnoreabbrev Wq wq
	cnoreabbrev Wa wa
	cnoreabbrev wQ wq
	cnoreabbrev WQ wq
	cnoreabbrev W w
	cnoreabbrev Q q
	cnoreabbrev Qall qall
" }}}

" vim:set ft=vim et sw=2:
