execute pathogen#infect()
syntax on
filetype plugin indent on
set nocompatible
syntax on
set backup
set backupdir=~/vimtmp,.
set directory=~/vimtmp,.
set modeline
set ts=4
set shiftwidth=4
set softtabstop=4
set expandtab
set background=light
colorscheme solarized
set t_Co=256
let g:syntastic_python_checkers=['python','pep8','frosted','pylint','flake8','pyflakes','pep257']
let g:syntastic_always_populate_loc_list=1
set ic
set scs
runtime plugin/dragvisuals.vim
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif
vmap  <expr>  <S-LEFT>   DVB_Drag('left')                  
vmap  <expr>  <S-RIGHT>  DVB_Drag('right')                 
vmap  <expr>  <S-DOWN>   DVB_Drag('down')                  
vmap  <expr>  <S-UP>     DVB_Drag('up')                    
let g:DVB_TrimWS = 1
nnoremap ]l :lwindow<cr>:lnext<cr>zx
nnoremap [l :lwindow<cr>:lprevious<cr>zx
nnoremap ]q :cwindow<cr>:cnext<cr>zx
nnoremap [q :cwindow<cr>:cprevious<cr>zx
if exists('+colorcolumn')
   set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
