#!/bin/bash
WKDIR=mydir
mkdir -p $WKDIR
export REPO_URL="http://localhost/git-repo"
export REPO_REV="stable"
OPT="--no-repo-verify -v"
OPT="--no-repo-verify"

CUR=$(pwd)

cd $WKDIR
repo_do() {
    ${CUR}/../repo.d/repo init -u "http://localhost/sample-repo" ${OPT}
    ${CUR}/../repo.d/repo sync
}
repo_do
#--repo-rev stable2
