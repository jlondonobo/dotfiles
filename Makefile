UNAME := $(shell uname)
DOTFILE_PATH := $(shell pwd)

$(HOME)/.%: %
	ln -sf $(DOTFILE_PATH)/$^ $@

git: $(HOME)/.gitconfig  $(HOME)/.gitignore

zsh: $(HOME)/.zshrc $(HOME)/.zsh.d

all: git zsh