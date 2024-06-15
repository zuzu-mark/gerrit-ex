#!/bin/bash

mycp() {
    cd workdir/.repo
    cp -rfd repo ../../git-repo
    cd -
}

myget() {
    git clone "http://localhost/git-repo" gerrit-git-repo
    cd git-repo
    rm -rfd .git
    mv ../gerrit-git-repo/.git .
    rm -rfd ../gerrit-git-repo
    cd -
}

myup() {
    cd git-repo
    git add .
    git commit -m"init"
    git push
    cd -
}

pushtag() {
    cd git-repo
	git tag -a stable -m "Version 0.0.1" 
    git push origin stable
    cd -
}
pushtag
