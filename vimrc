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

syntax on
filetype plugin indent on


nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <silent> <C-PageUp> :bp<CR> 
nnoremap <silent> <C-PageDown> :bn<CR> 

inoremap <C-Enter> <ESC>:Twrite 0<CR>a
noremap <C-Enter> :Twrite 0<CR>

inoremap <C-b> <ESC>:CtrlPBuffer<CR>
noremap <C-b> :CtrlPBuffer<CR>

if has("gui_running")
    " C-Space seems to work under gVim on both Linux and win32
    inoremap <C-Space> <C-n>
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


"""""""""""""""""""""""""" Theme and Color Scheme """"""""""""""""""""""""
" Fenstergroesse
au GUIEnter * set lines=52 columns=90


"http://vim.runpaint.org/gui/maximising-screen-space/
set guioptions-=T
set guioptions-=M
function! ToggleGUICruft()
  if &go==''
    exec('se go=mTrL')
  else
    exec('se go=')
  endif
endfunction
command! ToogleGUICruft call ToggleGUICruft()

" cursor see http://vim.sourceforge.net/tips/tip.php?tip_id=746 
" and http://www.nabble.com/the-cursor-in-gvim-for-win32-td17234409.html
set gcr=a:block
highlight iCursor  guifg=white  guibg=green
set gcr+=i:ver100-iCursor
"X11 Version Scrift setzen, blinken aus
"set gfn=Fixed\ Semi-Condensed\ 11
set gcr=a:blinkon0

	

"http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
"color scheme
set bg=dark
hi Normal guifg=white
hi Normal guibg=black
hi Comment ctermfg=1 guifg=DarkRed
hi LineNr       ctermfg=4 guifg=darkblue
hi Statement    ctermfg=5 gui=None guifg=#AA00AA
hi Constant     ctermfg=3 guifg=Brown
hi Identifier   ctermfg=4 guifg=Blue
hi Type         ctermfg=2 gui=None guifg=Green
hi Directory    gui=None
hi WikiCode     guifg=gray60
hi mkdCode      guifg=gray60
hi htmlLink	guifg=DarkGreen
hi htmlString	guifg=Blue
hi mkdLinkDef   guifg=Blue
hi mkdLinkDefTarget guifg=Blue
hi mkdID	guifg=Blue

"fuer das popup menu. hintergrund dunkles grau, selektiertes item in gruen
hi Pmenu guibg=#444444  
hi PmenuSel guibg=Green

" http://stackoverflow.com/questions/5375240/a-more-useful-statusline-in-vim
":so $VIMRUNTIME/syntax/hitest.vim
hi User1 guifg=Black guibg=DarkGreen ctermbg=2 ctermfg=black

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
