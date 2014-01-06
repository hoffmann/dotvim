set foldmethod=syntax

""""" Better Python folding
" http://www.vim.org/scripts/script.php?script_id=1494
function! PythonFoldText() 
    let size = 1 + v:foldend - v:foldstart 
    if size < 10 
        let size = " " . size 
    endif 
    if size < 100 
        let size = " " . size 
    endif 
    if size < 1000 
        let size = " " . size 
    endif 
     
    if match(getline(v:foldstart), '"""') >= 0 
        let text = substitute(getline(v:foldstart), '"""', '', 'g' ) . ' ' 
    elseif match(getline(v:foldstart), "'''") >= 0 
        let text = substitute(getline(v:foldstart), "'''", '', 'g' ) . ' ' 
    else 
        let text = getline(v:foldstart) 
    endif 
     
    return text . ' ' . size . ' lines:' 
endfunction 

set foldtext=PythonFoldText() 

