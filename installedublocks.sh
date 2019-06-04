#!/bin/bash

sudo apt install git build-essential
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 6.10.3
nvm use 6.10.3
npm --global install yarn

cd software/edublocks/ui
yarn
yarn run build 

cd ../server
yarn
