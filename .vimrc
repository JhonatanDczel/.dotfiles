" Shortcuts

let mapleader = " "

nnoremap <Leader>w :w<CR>
nnoremap <Leader>wr <C-w>r

" Shortcuts para ventanas

nnoremap <Leader>k :wincmd +<CR>
nnoremap <Leader>j :wincmd -<CR>
nnoremap <Leader>l :wincmd ><CR>
nnoremap <Leader>h :wincmd < <CR>
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h


" Scripts CP 

nnoremap <Leader>e :!touch %:r.excalidraw.png && code %:r.excalidraw.png<cr>
nnoremap <F5> :w<CR>:!g++ % -o o && echo "Compilacion exitosa :3"<CR>
nnoremap <F6> :!echo "Ejecucion: \n" && ./o < i && echo ""<CR>


" Configuraciones para el editor

syntax on

set number
set relativenumber

set tabstop=2
set expandtab
set shiftwidth=2

set autoindent
set smartindent
set expandtab
set cindent

