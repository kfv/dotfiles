" Vim-Plug Settings
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin(stdpath('data') . '/plug')
	Plug 'neovim/nvim-lspconfig'
	Plug 'rust-lang/rust.vim'
	Plug 'hrsh7th/nvim-compe'
	Plug 'arcticicestudio/nord-vim'
	Plug 'preservim/nerdtree'
call plug#end()

" Load Lua Config - lua/init.lua
lua require('init')

" NERDTree Settings
" Close NERDTree if it's the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") &&
  \ b:NERDTree.isTabTree()) | q | endif
" Automatically launch NERDTree
autocmd VimEnter * NERDTree
" NERDTree shouldn't be the default window
autocmd VimEnter * wincmd p
" Set working directory to the file's dir
autocmd BufEnter * lcd %:p:h
hi NERDTreeCWD ctermfg=green

" Personal Settings
set number
colorscheme nord
set completeopt=menuone,noselect
