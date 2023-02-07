bindir= ~/bin
bin_SCRIPTS= \
	uninstall-all-haskell \
	list-all-haskell \
	list-redundant-haskell-wip \
	rebuild-all-haskell \
	register-pkgsrc-subdir \
	revbump-all-haskell \
	${NULL}

PAGER?= less
lint:
	shellcheck ${bin_SCRIPTS} | ${PAGER}

install:
	mkdir -p ${bindir}
	for f in ${bin_SCRIPTS}; do \
		ln -f $${f} ${bindir}/$${f}; \
	done
