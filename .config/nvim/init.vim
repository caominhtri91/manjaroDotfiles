" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged) 
call plug#begin('~/.vim/plugged')

" Theme gruvbox
Plug 'morhetz/gruvbox' 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ranger
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

" deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'lfilho/cosco.vim'

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
Plug 'wellle/targets.vim'
Plug 'thinca/vim-textobj-function-javascript'
Plug 'gaving/vim-textobj-argument'
Plug 'scrooloose/nerdtree'

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
let g:gruvbox_contrast_dark='hard'
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
nmap <leader>w :w!<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

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
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2

" Turn off space after curly brace
let g:AutoPairsMapSpace=0

" Auto semicolon or colon
autocmd FileType javascript,css nmap <silent> z; <Plug>(cosco-commaOrSemiColon)
autocmd FileType javascript,css imap <silent> z; <c-o><Plug>(cosco-commaOrSemiColon)

" Insert new line when in insert mode
imap <leader>n <ESC>o
imap <leader>N <ESC>O
" Insert new line when in normal mode but not go to insert mode
nnoremap <silent><A-k> O<Esc>j
nnoremap <silent><A-j> o<Esc>k

" Config ranger
let g:ranger_map_keys = 0
map <leader>f :RangerNewTab<CR>

" Config netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4

"Config nerdtree
map <leader>t :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeQuitOnOpen=1

" Delete all other hidden buffer
autocmd BufEnter * setlocal bufhidden=delete
