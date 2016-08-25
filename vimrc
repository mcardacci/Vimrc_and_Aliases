syntax on 
set number
set expandtab
set shiftwidth=4
set smarttab
set autoindent
set smartindent
filetype indent plugin on


:inoremap ( ()<Esc>:let leavechar=")"<CR>i
:inoremap [ []<Esc>:let leavechar="]"<CR>i
:inoremap { {}<Esc>:let leavechar="}"<CR>i
:imap <C-j> <Esc>:exec "normal f" . leavechar<CR>a
:inoremap \fp <C-R>=getcwd()<CR>)
autocmd BufEnter * silent! lcd %:p:h
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

if has('persistent_undo')
    set undofile
    set undodir=$HOME/.vim/undo
endif
