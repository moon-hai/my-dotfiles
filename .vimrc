  set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" ----- Making Vim look good ------------------------------------------
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" ----- Vim as a programmer's text editor -----------------------------
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-syntastic/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'honza/vim-snippets'
Plugin '907th/vim-auto-save'
Plugin 'posva/vim-vue'
Plugin 'mattn/emmet-vim'

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

" Turn off bell
set belloff=all

" Map keys
let mapleader=","
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
nnoremap <Esc><Esc> :nohl<CR>

nnoremap $ <Nop>
nnoremap 0 <Nop>
nnoremap <S-l> $
nnoremap <S-h> 0

" Insert mode
inoremap <S-l> <C-o>$
inoremap <S-h> <C-o>0

nnoremap <S-c> :NERDTreeToggle<CR>
nnoremap <C-e> <C-w>w

imap <Up>    <Nop>
imap <Down>  <Nop>
imap <Left>  <Nop>
imap <Right> <Nop>
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

nmap >> <Nop>
nmap << <Nop>
vmap >> <Nop>
vmap << <Nop>
nnoremap <Tab> >>
nnoremap <S-Tab> <<

vnoremap <Tab>   >><Esc>gv
vnoremap <S-Tab> <<<Esc>gv

syntax on

set mouse=""

" We need this for plugins like Syntastic and vim-gitgutter which put symbols
" in the sign column.
hi clear SignColumn

" ----- altercation/vim-colors-solarized settings -----
" Toggle this to "light" for light colorscheme
set background=dark

" Uncomment the next line if your terminal is not configured for solarized
"let g:solarized_termcolors=256

" Set the colorscheme
colorscheme solarized
set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum

" ----- bling/vim-airline settings -----
" Always show statusbar
set laststatus=2

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1

" Use the solarized theme for the Airline status bar
let g:airline_theme='solarized'

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

" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)

" ----- airblade/vim-gitgutter settings -----
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1

" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END
