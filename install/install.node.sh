#!/usr/bin/env bash
echo "Installing node version manager"

if [[ -s "$HOME/.nvm/nvm.sh" ]]; then
	echo "Nvm already installed"
else
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
	
	echo "Activating nvm"
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

	echo "Downloading default node version"
	nvm install 6.9.1
	nvm use 6.9.1
fi

if test $(which npm); then
    echo "Installing npm global modules"
    npm install -g cordova eslint tern
fi
