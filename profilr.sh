#!/bin/sh
 pwd
apt list --manual-installed >> ./.profilr/.aptlist

cp .atom/config.cson ./.profilr/atom/config.cson
cp .atom/keymap.cson ./.profilr/atom/keymap.cson
cp .atom/snippets.cson ./.profilr/atom/snippets.cson
cp .atom/init.coffee ./.profilr/atom/init.coffee
cp .atom/styles.less ./.profilr/atom/styles.less
cp .atom/package-list.txt ./.profilr/atom/package-list.txt

cp .bash_aliases ./.profilr/ubuntu/.bash_aliases

cp .gitconfig ./.profilr/git/.gitconfig

snap list > ./.profilr/.snaplist
# same for flathub ? 

ls ./Documents/perso/ > ./.profilr/.current_projects