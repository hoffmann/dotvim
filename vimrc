execute pathogen#infect()
set nocompatible
set expandtab
"set textwidth=79
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set hidden                      "switch buffer without saving first
let mapleader = ","
set history=1000


set ignorecase 
set smartcase

let g:SimpylFold_docstring_preview = 1

set tags=tags;

syntax on
filetype plugin indent on
autocmd BufRead,BufNewFile ~/nvalt/* set syntax=mkd
autocmd BufWinEnter * set foldlevel=999999 

" OSX Map Ctrl-A -> Start of line, Ctrl-E -> End of line
map <C-a> <Home>
map <C-e> <End>

imap <C-BS> <C-W>

"complete in statusbar 
set wildmenu
set wildmode=longest:full,full

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <silent> <C-PageUp> :bp<CR> 
nnoremap <silent> <C-PageDown> :bn<CR> 

nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>

inoremap <C-Enter> <ESC>:Twrite 0<CR>a
noremap <C-Enter> :Twrite 0<CR>

inoremap <C-b> <ESC>:CtrlPBuffer<CR>
noremap <C-b> :CtrlPBuffer<CR>

imap <C-v> <ESC>"+pa

nnoremap <leader>n :e ~/nvalt/
set splitright

map <Leader>m :CtrlPModified<CR>
map <Leader>d :Pydocstring<CR>

map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

set nofoldenable    " disable folding
set foldlevelstart=99
set foldlevel=99

"OSX mapping
inoremap <D-8> [
inoremap <D-9> ]


" CDC = Change to Directory of Current file
command CDC cd %:p:h

if has("gui_running")
    " C-Space seems to work under gVim on both Linux and win32
    inoremap <C-Space> <C-n>
    set cursorline
    " disable blink 
    set guicursor+=n-v-c:blinkon0
else " no gui
  if has("unix")
    inoremap <Nul> <C-n>
  else
  " I have no idea of the name of Ctrl-Space elsewhere
  endif
endif

"ctrlp ignores
"set wildignore+=*.so,*.swp,*.zip     " MacOSX/Linux

"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"  \ 'file': '\v\.(exe|so|dll)$',
"  \ 'link': 'some_bad_symbolic_links',
"  \ }

" see http://stackoverflow.com/questions/4331776/change-vim-swap-backup-undo-file-name
set backupdir=~/.vim/tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim/tmp,~/.tmp,~/tmp,/var/tmp,/tmp

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile
endif
"""""""""""""""""""""""""" Theme and Color Scheme """"""""""""""""""""""""
" Fenstergroesse
au GUIEnter * set lines=52 columns=90


"http://vim.runpaint.org/gui/maximising-screen-space/
set guioptions-=T
set guioptions-=M
set guioptions-=r
"function! ToggleGUICruft()
"  if &go==''
"    exec('se go=mTrL')
"  else
"    exec('se go=')
"  endif
"endfunction
"command! ToogleGUICruft call ToggleGUICruft()
"se go=

" cursor see http://vim.sourceforge.net/tips/tip.php?tip_id=746 
" and http://www.nabble.com/the-cursor-in-gvim-for-win32-td17234409.html
"set gcr=a:block
"highlight iCursor  guifg=white  guibg=green
"set gcr+=i:ver100-iCursor
"X11 Version Scrift setzen, blinken aus
"set gfn=Fixed\ Semi-Condensed\ 11
"set gcr=a:blinkon0

colorscheme ph

set statusline=
set statusline+=%1*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%1*\%m%r%w\                      "Modified? Readonly? Top/bot
set statusline+=%1*\ %{fugitive#statusline()}\                            "Colnr
set statusline+=%1*\ %y\                                  "FileType
set statusline+=%1*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%1*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%1*\ %{&ff}\                              "FileFormat (dos/unix..) 
set statusline+=%1*\ %{&spelllang}\  "Spellanguage & Highlight on?
set statusline+=%1*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)

color zellner
