
init:
	make link
	make homebrew
	make -i brew
	make fishshell
	fish
	make node
link:
	ln -sf ~/.dotfiles/bash/.bashrc ~/.bashrc
	ln -sf ~/.dotfiles/bash/.bash_profile ~/.bash_profile
	ln -sf ~/.dotfiles/git/.gitconfig ~/.gitconfig
	ln -sf ~/.dotfiles/git/.master_gitignore ~/.master_gitignore
	ln -sf ~/.dotfiles/vim/.vimrc ~/.vimrc
	ln -sf ~/.dotfiles/nano/.nanorc ~/.nanorc
	ln -sf ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf	
	ln -sf ~/.dotfiles/fish/aliases.fish ~/.config/fish/aliases.fish
	ln -sf ~/.dotfiles/fish/config.fish ~/.config/fish/config.fish
	ln -sf ~/.dotfiles/fish/fishfile ~/.config/fish/fishfile

homebrew:
	curl -o install -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install
	ruby ./install
	rm ./install

brew:
	brew install ettercap
	brew install gibo
	brew install git
	brew install glide
	brew install go
	brew install httpie
	brew install hub
	brew install micro
	brew install nkf
	brew install nodebrew
	brew install peco
	brew install tmux
	brew install tor
	brew install torsocks
	brew install tree
	brew install w3m
	brew install wget
	brew install wireshark
	brew install youtube-dl
	brew install z

fishshell: 
	brew install fish
	curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
	ln -sf ~/.dotfiles/fish/aliases.fish ~/.config/fish/aliases.fish
	ln -sf ~/.dotfiles/fish/config.fish ~/.config/fish/config.fish
	ln -sf ~/.dotfiles/fish/fishfile ~/.config/fish/fishfile
	fish --command "fisher up"

node:
	nodebrew selfupdate
	nodebrew install-binary stable
	nodebrew use stable