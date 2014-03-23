dotvim
======

create a `.vimrc` with

    source ~/.vim/vimrc


Bundles
-------

	git clone https://github.com/plasticboy/vim-markdown.git
	git clone https://github.com/tpope/vim-sensible.git
	git clone https://github.com/tpope/vim-surround.git
	git clone https://github.com/tpope/vim-fugitive.git
	git clone https://github.com/scrooloose/syntastic.git
	git clone https://github.com/kien/ctrlp.vim.git
	git clone https://github.com/tpope/vim-tbone.git
	git clone https://github.com/tpope/vim-commentary.git
    git clone https://github.com/tristen/vim-sparkup.git
    git clone https://github.com/edsono/vim-matchit.git
    git clone https://github.com/garbas/vim-snipmate.git
    git clone https://github.com/Glench/Vim-Jinja2-Syntax.git
    git clone https://github.com/lunaru/vim-twig.git
    git clone https://github.com/scrooloose/nerdtree.git
    git clone https://github.com/groenewege/vim-less
    git clone https://github.com/tell-k/vim-autopep8.git
    #dependencies
    git clone https://github.com/tomtom/tlib_vim.git
    git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
    git clone https://github.com/honza/vim-snippets.git


### vim-sparkup

    C-e

### vim-tbone
Integration mit `tmux` 

add newline when writing command 

	diff --git a/autoload/tbone.vim b/autoload/tbone.vim
	index eff4d78..1742c2b 100644
	--- a/autoload/tbone.vim
	+++ b/autoload/tbone.vim
	@@ -321,6 +321,7 @@ function! tbone#write_command(bang, line1, line2, count, tar
		\ 'substitute(v:val,"^\\s*","","")'),
		\ "!empty(v:val)"),
		\ "\r")
	+  let keys = keys."\r"
	if a:count > 0
	let keys = get(g:, 'tbone_write_initialization', '').keys."\r"
	endif


### nerdtree

    :NERDTree
    :NERDTreeToggle

    map <C-n> :NERDTreeToggle<CR>

### vim-commentary

    \\      toggle comment (mit motion key)
    gc      toggle comment (mit motion key)
    \\\     comment current line

## folding

    za      toggle Folding
    zo      opens a fold at the cursor.
    zO      opens all folds at the cursor.
    zm      increases the foldlevel by one.
    zM      closes all open folds.
    zr      decreases the foldlevel by one.
    zR      decreases the foldlevel to zero -- all folds will be open.

Python folding
    
    set foldmethod=syntax
    " classes and functions are folded not more
    set foldnestmax=2

    nnoremap <space> za

    vnoremap <space> zf

## tags

pyhton-kinds um imports zu ignoren

    ctags --python-kinds=-i  -R -o tags src/

http://www.held.org.il/blog/2011/02/configuring-ctags-for-python-and-vim/

Plugins
-------

	https://github.com/suan/vim-instant-markdownzr


