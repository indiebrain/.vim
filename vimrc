set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

Plugin 'bling/vim-airline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'leafo/moonscript-vim'
Plugin 'morhetz/gruvbox'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'slim-template/vim-slim.git'
Plugin 'tpope/vim-commentary.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-haml.git'
Plugin 'tpope/vim-rails.git'
Plugin 'vim-ruby/vim-ruby.git'
Plugin 'vim-scripts/ruby-matchit'

call vundle#end()            " required
filetype plugin indent on    " requiredfiletype plugin indent on

nmap <Leader>n :NERDTreeToggle<CR>
set wildmenu
set spell
set autoread

let g:airline_powerline_fonts=1
colorscheme gruvbox
set background=dark

" share a single NERDTree between buffers and tabs
if argc() == 0
  autocmd VimEnter * NERDTree
  autocmd BufEnter * NERDTreeMirror
end

" close NERDTree if it's the last window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
