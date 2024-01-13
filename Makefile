all:install

install:
	ln -t $$HOME -s $$(pwd)/.zshenv
