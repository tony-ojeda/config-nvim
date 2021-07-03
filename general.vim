"+-----------+
"|  General  |
"+-----------+
let mapleader=" "
let g:mapleader=" "

set number " setear numeración en el editor
set relativenumber

set nohlsearch
set hidden
set incsearch
set smartindent
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
" Having longer updatetime (deafult is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=50
set modifiable

set mouse=a  " permite interactuar el mouse en el editor
set numberwidth=1  " quita el ancho de la numeración
set clipboard=unnamedplus  " guarda en el cliopboard
syntax enable  " agregar sintaxys
set showcmd  " muestra los comandos que uso
set ruler
set cursorline  " muestra donde se ubica el cursor
set autoindent
set noai
set nowrap
set ignorecase
set encoding=UTF-8
set showmatch  " muestra el resaltado de parentesis
set sw=2  " identa todo a 2 espacios
set tabstop=2 " 1 tab == 2 spaces
set laststatus=2  " muestra el estado del archivo
set noshowmode  " oculta los estados inser, view


" quita los espacions en blancos de todo el buffer
fun! TrimWhitespace()
	let l:save = winsaveview()
	keeppatterns $s/\s\+$//e
	call winrestview(l:save)
endfun

augroup THE_PRIMEAGEN
	autocmd!
	autocmd BufWritePre * :call TrimWhitespace()
augroup END
