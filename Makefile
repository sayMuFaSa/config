all:install

install:$(HOME)/.zshenv
$(HOME)/.zshenv:
	cp .zshenv $@
