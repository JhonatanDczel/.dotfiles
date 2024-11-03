" Shortcuts

let mapleader = " "

nnoremap <Leader>w :w<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>wr <C-w>r

" Shortcuts para ventanas

nnoremap <Leader>k :wincmd +<CR>
nnoremap <Leader>j :wincmd -<CR>
nnoremap <Leader>l :wincmd ><CR>
nnoremap <Leader>h :wincmd < <CR>
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k nnoremap <C-l> <C-W>l nnoremap <C-h> <C-W>h


" Scripts CP 

nnoremap <Leader>e :!touch %:r.excalidraw.png && code %:r.excalidraw.png<cr>
nnoremap <F5> :w<CR>:!g++ % -o o && echo "Compilacion exitosa :3"<CR>
nnoremap <F6> :!echo "Ejecucion: \n" && ./o < i && echo ""<CR>


" Configuraciones para el editor

syntax on
filetype on

colorscheme habamax
"habamax (Un poco oscuro), con el dolor de mi corazon :"3
"Sorbet (casi igual a catpuchin/tokyo)
"desert (Perdido en resaltado y no tan buenos colores)
"lunaperche (Un poco perdido en resaltado de sintaxis)
"quiet (god minimalista, no para codigo)
"slate (Buenos colores, pero poco resaltado)

set number
set relativenumber
set clipboard=unnamedplus
set autowrite


set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2

set autoindent
set smartindent
set expandtab
set cindent

set scrolloff=8
set sidescrolloff=8

