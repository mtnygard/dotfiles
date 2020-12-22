#! /bin/sh

replace() {
    [ -f $1 ] && rm $1
    ln -s $2 $1
}

mkdir -p ~/.clojure
mkdir -p ~/.m2
mkdir -p ~/.vscode

replace ~/.gitconfig               ~/dotfiles/gitconfig
replace ~/.clojure/deps.edn        ~/dotfiles/clojure/deps.edn
replace ~/.m2/settings.xml         ~/dotfiles/maven/settings.xml
replace ~/.vscode/keybindings.json ~/dotfiles/vscode/keybindings.json