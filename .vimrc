"Vundle
"Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}
"My Plugins
Plugin 'mattn/emmet-vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"/vundle

set nocp
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME

set nu
syntax enable
set ic is

set autoindent
autocmd FileType html,xml,php setlocal expandtab shiftwidth=2 tabstop=2

"GUI colorscheme
" IMPORTANT: Uncomment one of the following lines to force
" using 256 colors (or 88 colors) if your terminal supports it,
" but does not automatically use 256 colors by default.
set t_Co=256
"set t_Co=88
if (&t_Co == 256 || &t_Co == 88) && !has('gui_running') &&
			\ filereadable(expand("$HOME/.vim/plugin/guicolorscheme.vim"))
	" Use the guicolorscheme plugin to makes 256-color or 88-color
	" terminal use GUI colors rather than cterm colors.
	runtime! plugin/guicolorscheme.vim
	GuiColorScheme molokai
else
	" For 8-color 16-color terminals or for gvim, just use the
	" regular :colorscheme command.
	colorscheme molokai
endif
colorscheme molokai

"remember poistion
if has("autocmd")
	  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"/GUI colorscheme
"rema
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk

nmap J 5j
nmap K 5k
xmap J 5j
xmap K 5k

imap jk <Esc>

"Bundles
"set config stuff
set autoindent
set softtabstop=4
set tabstop=4
set shiftwidth=4

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//


