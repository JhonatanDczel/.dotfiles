" Shortcuts

let mapleader = " "

nnoremap <Leader>w :w<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>wr <C-w>r

nnoremap <Leader>bn :bnext<CR>

inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>

" Shortcuts para ventanas

nnoremap <Leader>k :wincmd +<CR>
nnoremap <Leader>j :wincmd -<CR>
nnoremap <Leader>l :wincmd ><CR>
nnoremap <Leader>h :wincmd < <CR>
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k 
nnoremap <C-l> <C-W>l 
nnoremap <C-h> <C-W>h


" Keybindings CP 

nnoremap <Leader>e :!touch %:r.excalidraw.png && code %:r.excalidraw.png<cr>

function! Compile()
  execute "w"
  silent execute "!g++ % -o runfiles/executable > runfiles/problem.log 2>&1 && echo 'Compilacion exitosa :3' >> runfiles/problem.log"
  redraw!
endfunction

function! Execute()
  silent execute "!./runfiles/executable < runfiles/data.in > runfiles/problem.out"
  if v:shell_error == 0
    silent execute "!echo 'Ejecución completa:' > runfiles/problem.log"
    "silent execute "!/usr/bin/time -o runfiles/problem.log -f '⏱️ Time: %%S s\\n📈 Memory: %%M KB' ./runfiles/executable < runfiles/data.in > /dev/null"
    silent execute "!/usr/bin/time -o runfiles/problem.log -f \"> Time: \\%S s\\n> Memory: \\%M KB\" ./runfiles/executable < runfiles/data.in > /dev/null"
  else
    silent execute "!echo 'Error en la ejecución' > runfiles/problem.log"
  endif
  redraw!
endfunction

" Mapeamos cc y ce a las funciones
nnoremap <Leader>cc :call Compile()<CR>
nnoremap <Leader>ce :call Execute()<CR>

" Hacemos que F5 y F6 llamen a cc y ce
nnoremap <F5> <Leader>cc
nnoremap <F6> <Leader>ce

" Mapeo para cr que compila y luego ejecuta
nmap <Leader>cr <Leader>cc<CR><Leader>ce

" Configuraciones para el editor

syntax on
filetype on
set backspace=indent,eol,start

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
set mouse=a


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

set wildmenu
set completeopt=menu,menuone,noselect

