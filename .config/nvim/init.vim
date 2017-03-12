" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged) 
call plug#begin('~/.vim/plugged')

" Theme gruvbox
Plug 'morhetz/gruvbox' 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" javascript plug
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
Plug 'gavocanov/vim-js-indent'
Plug 'elzr/vim-json'
Plug 'heavenshell/vim-jsdoc'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'othree/jspc.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'

Plug 'mileszs/ack.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'

" Initialize plugin system
call plug#end()

filetype plugin on

" Use deoplete.
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Set colorscheme
colorscheme gruvbox
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Set dark background
set background=dark

" Set mouse
if has('mouse')
	set mouse=a
endif

" clipboard
set clipboard=unnamedplus

" line number
set nu
set relativenumber
set nohlsearch
set so=5

" auto indent
set autoindent
set si "smart indent
imap jj <Esc>

" syntax
syntax on

" Map leader key
let mapleader = "," " map leader key to ,
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Map Esc to ctrl c
vnoremap <C-c> <Esc>

" Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

" Config javascript_plugin_jsdoc
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" Config ark
let g:ackprg = 'ag --vimgrep'

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4

" Turn off space after curly brace
let g:AutoPairsMapSpace=0
