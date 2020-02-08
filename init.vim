set nocompatible

filetype off

call plug#begin()

" ----- Making Vim look good ------------------------------------------
Plug 'tomasr/molokai'

" ----- Vim as a programmer's text editor -----------------------------
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-syntastic/syntastic'
Plug 'xolox/vim-misc'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/a.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'honza/vim-snippets'
Plug '907th/vim-auto-save'
Plug 'leafoftree/vim-vue-plugin'
Plug 'mattn/emmet-vim'
Plug 'mhartington/oceanic-next'
Plug 'valloric/youcompleteme'
Plug 'terryma/vim-multiple-cursors'

" ----- Working with Git ----------------------------------------------
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" ----- Other text editing features -----------------------------------
Plug 'Raimondi/delimitMate'

" ----- man pages, tmux -----------------------------------------------
Plug 'christoomey/vim-tmux-navigator'

" ----- Syntax plugins ------------------------------------------------
Plug 'jez/vim-c0'
Plug 'jez/vim-ispc'

" ---- Extras/Advanced plugins ----------------------------------------
Plug 'tpope/vim-surround'
Plug 'cakebaker/scss-syntax.vim'

call plug#end()

filetype plugin indent on

" --- General settings ---
set t_Co=256
let g:is_posix = 1
set tw=99999
set cc=

" Ruler
set ruler
set textwidth=100
" set colorcolumn=+1
set nowrap
set number
set regexpengine=1
set noshowcmd
set synmaxcol=200
set nocursorline
let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" Save settings
set encoding=utf-8
set fileformats=unix

" Tab settings
set backspace=2
set tabstop=2
set shiftwidth=2
set shiftround
set softtabstop=2
set expandtab

" Search settings
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Backup settings
set nobackup
set nowritebackup
set noswapfile

" Use one space, not two, after punctuation.
set nojoinspaces

" Open new split panes to right and bottom, which feels more natural
set splitright

" Autoload file changes
set autoread
au CursorHold * checktime

" Disable mouse
set mouse=""

" Copy to clipboard
set clipboard=unnamed

" Set auto folder
set autochdir
set tags=tags;

" Turn off bell
set belloff=all

" Map keys
let mapleader=","
nnoremap ww :nohl<CR>

nnoremap $ <Nop>
nnoremap 0 <Nop>
nnoremap <S-Right> $
nnoremap <S-Left> 0
nnoremap <S-l> $
nnoremap <S-h> 0
nnoremap qq :q<CR>

" Insert mode
inoremap <S-Right> <C-o>$
inoremap <S-Left> <C-o>0
inoremap jj <Esc>

nnoremap <S-c> :NERDTreeToggle<CR>
nnoremap <S-f> :NERDTreeFind<CR>

nnoremap <C-e> <C-w>w
nnoremap <S-i> :vsp<CR>
nnoremap <S-o> :sp<CR>

nmap >> <Nop>
nmap << <Nop>
nnoremap <Tab> >>
nnoremap <S-Tab> <<

vmap >> <Nop>
vmap << <Nop>
vnoremap <Tab> >><Esc>gv
vnoremap <S-Tab> <<<Esc>gv

set mouse=""

if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme OceanicNext

" We need this for plugins like Syntastic and vim-gitgutter which put symbols
" in the sign column.
hi clear SignColumn

" ------ YouCompleteMe -----
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']

" ------- Set insert mouse thin ------
set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum

" ----- jistr/vim-nerdtree-tabs -----
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeShowHidden=1

" ----- Autosave --------
let g:auto_save = 1

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

" ---- CtrlP ----
let g:ctrlp_working_path_mode = 'ra'
nnoremap <C-o> :CtrlPMRUFiles<CR>
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_mruf_exclude = '.*/tmp/.*\|.*/.git/.*\|.*/node_modules/.*'
let g:ctrlp_max_files = 200000

" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]

let g:elist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

" _______Vim Vue Plugin ______
let g:vim_vue_plugin_load_full_syntax = 1
