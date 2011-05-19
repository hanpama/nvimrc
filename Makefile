
install: download
	if [ -f $$HOME/.vimrc ]; then \
		echo; \
	else \
		ln -s `pwd`/vimrc $$HOME/.vimrc; \
	fi
	if [ -d $$HOME/.vim ]; then \
		echo; \
	else \
		ln -s `pwd`/vim $$HOME/.vim; \
	fi

download: download_colors download_syntax

download_colors:
	mkdir -p vim/colors/; \
	cd vim/colors/; \
	curl -O http://blog.toddwerth.com/entry_files/8/ir_black.vim

download_syntax:
	mkdir -p vim/syntax/; \
	cd vim/syntax/; \
	curl http://www.vim.org/scripts/download_script.php?src_id=10630 \
	     -o mkd.vim \
	     http://www.vim.org/scripts/download_script.php?src_id=8666 \
	     -o jinja.vim \
	     http://www.vim.org/scripts/download_script.php?src_id=6961 \
		 -o htmljinja.vim \
		 http://www.vim.org/scripts/download_script.php?src_id=8461 \
		 -o haml.vim \
		 http://www.vim.org/scripts/download_script.php?src_id=7447 \
		 -o sass.vim \
		 http://leafo.net/lessphp/vim/less.vim -o less.vim

download_after_syntax:
	mkdir -p vim/after/syntax/; \
	cd vim/after/syntax/; \
	curl http://www.vim.org/scripts/download_script.php?src_id=8846 \
	     -o css.vim

