bin_SCRIPTS= \
	deinstall-all-haskell \
	list-all-haskell \
	revbump-all-haskell \
	${NULL}

install:
	for f in ${bin_SCRIPTS}; do \
		ln -f $${f} ~/bin/$${f}; \
	done
