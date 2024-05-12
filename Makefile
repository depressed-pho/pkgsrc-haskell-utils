bindir= ~/bin
bin_SCRIPTS= \
	commit-with-pkgdir \
	grep-all-haskell \
	import-and-register \
	remove-and-unregister \
	list-all-haskell \
	list-haskell-patches-todo \
	list-orphaned-haskell-libs \
	list-redundant-haskell-wip \
	rebuild-all-haskell \
	register-pkgsrc-subdir \
	revbump-all-haskell \
	stash-commit-message \
	uninstall-all-haskell \
	unregister-pkgsrc-subdir \
	${NULL}

PAGER?= less
lint:
	shellcheck ${bin_SCRIPTS} | ${PAGER}

install:
	mkdir -p ${bindir}
	for f in ${bin_SCRIPTS}; do \
		ln -f $${f} ${bindir}/$${f}; \
	done
