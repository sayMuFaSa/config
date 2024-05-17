PACKER_LINK=https://github.com/wbthomason/packer.nvim
PACKER=$(HOME)/.local/share/nvim/site/pack/packer/start/packer.nvim

all:install

install:$(HOME)/.zshenv $(PACKER)
$(HOME)/.zshenv:.zshenv
	cp $< $@
$(PACKER):
	git clone --depth 1 $(PACKER_LINK) $@
