sync:update
update:
	cp .zshenv $$HOME/.zshenv

resync:reupdate
reupdate:
	cp $$HOME/.zshenv .zshenv
