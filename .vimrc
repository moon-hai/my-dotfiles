set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" ----- Making Vim look good ------------------------------------------
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" ----- Vim as a programmer's text editor -----------------------------
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-syntastic/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'honza/vim-snippets'
Plugin '907th/vim-auto-save'
Plugin 'posva/vim-vue'
Plugin 'mattn/emmet-vim'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'valloric/youcompleteme'

" ----- Working with Git ----------------------------------------------
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" ----- Other text editing features -----------------------------------
Plugin 'Raimondi/delimitMate'

" ----- man pages, tmux -----------------------------------------------
Plugin 'christoomey/vim-tmux-navigator'

" ----- Syntax plugins ------------------------------------------------
Plugin 'jez/vim-c0'
Plugin 'jez/vim-ispc'

" ---- Extras/Advanced plugins ----------------------------------------
Plugin 'tpope/vim-surround'
Plugin 'HTML-AutoCloseTag'
Plugin 'cakebaker/scss-syntax.vim'

call vundle#end()

filetype plugin indent on

" --- General settings ---
set t_Co=256
let g:is_posix = 1
set tw=99999

" Ruler
set ruler
set textwidth=100
set colorcolumn=+1
set nowrap
set number
set regexpengine=1
set noshowcmd
set synmaxcol=200
set nocursorline
if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

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
set tags=./tags,tags;$HOME

" Turn off bell
set belloff=all

" Map keys
let mapleader=","
nnoremap <Esc><Esc> :nohl<CR>

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

syntax on

set mouse=""

" ----- Theme ------
set background=dark
let g:hybrid_transparent_background = 1
colorscheme hybrid_material
let g:airline_theme = "hybrid"

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

" ----- bling/vim-airline settings -----
" Always show statusbar
set laststatus=2

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1

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
let g:ctrlp_mruf_exclude = '.*/tmp/.*\|.*/.git/.*'
let g:ctrlp_max_files = 200000

" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
