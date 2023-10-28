bindir= ~/bin
bin_SCRIPTS= \
	import-and-register \
	list-all-haskell \
	list-redundant-haskell-wip \
	rebuild-all-haskell \
	register-pkgsrc-subdir \
	revbump-all-haskell \
	stash-commit-message \
	uninstall-all-haskell \
	${NULL}

PAGER?= less
lint:
	shellcheck ${bin_SCRIPTS} | ${PAGER}

install:
	mkdir -p ${bindir}
	for f in ${bin_SCRIPTS}; do \
		ln -f $${f} ${bindir}/$${f}; \
	done
