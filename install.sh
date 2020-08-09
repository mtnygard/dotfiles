#! /bin/sh

replace() {
    [ -f $1 ] && rm $1
    ln -s $2 $1
}

mkdir -p ~/.clojure
mkdir -p ~/.m2

replace ~/.gitconfig         ~/dotfiles/gitconfig
replace ~/.clojure/deps.edn  ~/dotfiles/clojure/deps.edn
replace ~/.m2/settings.xml   ~/dotfiles/maven/settings.xml
