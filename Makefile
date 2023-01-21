bin_SCRIPTS= \
	uninstall-all-haskell \
	list-all-haskell \
	rebuild-all-haskell \
	register-pkgsrc-subdir \
	revbump-all-haskell \
	${NULL}

PAGER?= less
lint:
	shellcheck ${bin_SCRIPTS} | ${PAGER}

install:
	for f in ${bin_SCRIPTS}; do \
		ln -f $${f} ~/bin/$${f}; \
	done
