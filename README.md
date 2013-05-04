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

    git clone https://github.com/garbas/vim-snipmate.git
    #dependencies
    git clone https://github.com/tomtom/tlib_vim.git
    git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
    git clone https://github.com/honza/vim-snippets.git

### vim-sparkup

    C-e

### vim-tbone
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






Plugins
-------

	https://github.com/suan/vim-instant-markdownzr
