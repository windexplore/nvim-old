let config_dir = "/home/fubo/.config/nvim"
let plug_dir = join([config_dir, "/plug"], "")

" call plug#begin('~/.config/nvim/plug/')
call plug#begin(plug_dir)



Plug 'junegunn/vim-easy-align'
"Plug 'vim-airline/vim-airline'
Plug 'itchyny/lightline.vim'



call plug#end()


" @airline
set t_Co=256
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
set laststatus=2  "永远显示状态栏
"let g:airline_theme='bubblegum' "选择主题
"let g:airline#extensions#tabline#enabled=1    "Smarter tab line: 显示窗口tab和buffer
"let g:airline#extensions#tabline#left_sep = ' '  "separater
"let g:airline#extensions#tabline#left_alt_sep = '|'  "separater
"let g:airline#extensions#tabline#formatter = 'default'  "formater
"let g:airline_left_sep = '▶'
"let g:airline_left_alt_sep = '❯'
"let g:airline_right_sep = '◀'
"let g:airline_right_alt_sep = '❮'


