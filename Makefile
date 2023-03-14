SHELL := /bin/zsh

default :
	@echo "There is no default for your own safety."

git :
	@echo "Symlinking git dotfiles"
	ln -s $(HOME)/Documents/workspace/dotfiles/git/gitconfig $(HOME)/.gitconfig 

install_nvm :
	@echo "Installing nvm"
	bash ./src/install_nvm.sh

zsh :
	@echo "Symlinking ZSH dotfiles"
	ln -s $(HOME)/Documents/workspace/dotfiles/zsh/zshrc.zsh $(HOME)/.zshrc 
	source ~/.zshrc && echo "Successfully sourced .zshrc"

neovim :
	@echo "Symlinking Neovim dotfiles"
	mkdir -p $(HOME)/.config/
	ln -s $(HOME)/Documents/workspace/dotfiles/neovim $(HOME)/.config/nvim

brewmybeer :
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	sh ./src/brew.sh

ohmyzsh :
	bash ./src/shell/ohmyzsh.sh

all : git install_nvm zsh neovim brewmybeer ohmyzsh

.PHONY : all default git install_nvm zsh neovim brewmybeer ohmyzsh

