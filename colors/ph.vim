" Vim color file
"
" Author: Anthony Carapetis <anthony.carapetis@gmail.com>
"
" Note: Based on github's syntax highlighting theme
"       Used Brian Mock's darkspectrum as a starting point/template
"       Thanks to Ryan Heath for an easy list of some of the colours:
"       http://rpheath.com/posts/356-github-theme-for-syntax-gem

"http://vim.wikia.com/wiki/Identify_the_syntax_highlighting_group_used_at_the_cursor
"
"" map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
" \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
" \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


hi clear

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="ph"

hi Normal       guifg=#FFFFFF guibg=#000000

" {{{ Cursor
hi Cursor		guibg=green guifg=#F8F8FF
hi CursorLine	guibg=#222222
hi CursorColumn	guibg=#E8E8EE
" }}}

" {{{ Diff
hi DiffAdd         guifg=#003300 guibg=#DDFFDD gui=none
hi DiffChange                    guibg=#ececec gui=none
hi DiffText        guifg=#000033 guibg=#DDDDFF gui=none
hi DiffDelete      guifg=#DDCCCC guibg=#FFDDDD gui=none
" }}}

" {{{ Folding / Line Numbering / Status Lines
hi Folded		guibg=#ECECEC guifg=#808080 gui=bold
hi vimFold		guibg=#ECECEC guifg=#808080 gui=bold
hi FoldColumn	guibg=#ECECEC guifg=#808080 gui=bold

hi LineNr		guifg=#959595 guibg=#ECECEC gui=bold
hi NonText		guifg=#555555 guibg=#000000
hi Folded		guifg=#808080 guibg=#ECECEC gui=bold
hi FoldeColumn  guifg=#808080 guibg=#ECECEC gui=bold

hi VertSplit	guibg=#bbbbbb guifg=#bbbbbb gui=none
hi StatusLine   guibg=#bbbbbb guifg=#404040 gui=bold
hi StatusLineNC guibg=#d4d4d4 guifg=#404040 gui=italic
" }}}

" {{{ Misc
hi ModeMsg		guifg=#990000
hi MoreMsg		guifg=#990000

hi Title		guifg=#ef5939
hi WarningMsg	guifg=#ef5939
hi SpecialKey   guifg=#177F80 gui=italic

hi MatchParen	guibg=#cdcdfd guifg=#000000
hi Underlined	guifg=#000000 gui=underline
hi Directory	guifg=#990000
" }}}

" {{{ Search, Visual, etc
hi Visual		guifg=#FFFFFF guibg=#3465a4 gui=none
hi VisualNOS    guifg=#FFFFFF guibg=#204a87 gui=none
hi IncSearch	guibg=#cdcdfd guifg=#000000 gui=italic
hi Search		guibg=#cdcdfd guifg=#000000 gui=italic
" }}}

" {{{ Syntax groups
hi Ignore		guifg=#808080
hi Identifier	guifg=#0086B3
hi PreProc		guifg=#A0A0A0 gui=bold
hi Comment		guifg=#999988
hi Constant		guifg=#177F80 gui=none
"ph
hi String		ctermfg=3     guifg=Brown
hi Function		guifg=#990000 gui=bold
hi Statement	guifg=#000000 gui=bold
hi Type			guifg=#445588 gui=bold
hi Number		guifg=#1C9898
hi Todo			guifg=#FFFFFF guibg=#990000 gui=bold
hi Special		guifg=#159828 gui=bold
hi rubySymbol   guifg=#960B73
hi Error        guibg=#f8f8ff guifg=#ff1100 gui=undercurl
hi Todo         guibg=#f8f8ff guifg=#ff1100 gui=underline
hi Label        guifg=#000000 gui=bold
hi StorageClass guifg=#000000 gui=bold
hi Structure    guifg=#000000 gui=bold
hi TypeDef      guifg=#000000 gui=bold
" }}}

" {{{ Completion menus
hi WildMenu     guifg=#7fbdff guibg=#425c78 gui=none

hi Pmenu        guibg=#808080 guifg=#ffffff gui=bold
hi PmenuSel     guibg=#cdcdfd guifg=#000000 gui=italic
hi PmenuSbar    guibg=#000000 guifg=#444444
hi PmenuThumb   guibg=#aaaaaa guifg=#aaaaaa
" }}}

" {{{ Spelling
hi spellBad     guisp=#fcaf3e
hi spellCap     guisp=#73d216
hi spellRare    guisp=#fcaf3e
hi spellLocal   guisp=#729fcf
" }}}

" {{{ Aliases
hi link cppSTL          Function
hi link cppSTLType      Type
hi link Character		Number
hi link htmlTag			htmlEndTag
"hi link htmlTagName     htmlTag
hi link htmlLink		Underlined
hi link pythonFunction	Identifier
hi link Question		Type
hi link CursorIM		Cursor
hi link VisualNOS		Visual
hi link xmlTag			Identifier
hi link xmlTagName		Identifier
hi link shDeref			Identifier
hi link shVariable		Function
hi link rubySharpBang	Special
hi link perlSharpBang	Special
hi link schemeFunc      Statement
hi link pythonBuiltin   Identifier
"hi link shSpecialVariables Constant
"hi link bashSpecialVariables Constant
" }}}

" {{{ Tabs (non-gui0
hi TabLine		guifg=#404040 guibg=#dddddd gui=none
hi TabLineFill	guifg=#404040 guibg=#dddddd gui=none
hi TabLineSel	guifg=#404040 gui=bold
" }}}

" custom ph


"http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
"color scheme
"set bg=dark
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

hi Folded guibg=black 

"fuer das popup menu. hintergrund dunkles grau, selektiertes item in gruen
hi Pmenu ctermbg=232 ctermfg=white guibg=#444444  
hi PmenuSel ctermbg=2 guibg=Green 

" http://stackoverflow.com/questions/5375240/a-more-useful-statusline-in-vim
":so $VIMRUNTIME/syntax/hitest.vim
hi User1 guifg=Black guibg=DarkGreen ctermbg=2 ctermfg=black

