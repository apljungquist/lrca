#!/usr/bin/env bash

set -e

export GIT_AUTHOR_NAME="Alice"
export GIT_AUTHOR_EMAIL="alice@example.com"
export GIT_AUTHOR_DATE="Thu, 01 Jan 1970 00:00:00 +0000"
export GIT_COMMITTER_NAME="Bob"
export GIT_COMMITTER_EMAIL="bob@example.com"
export GIT_COMMITTER_DATE="Thu, 01 Jan 1970 00:00:00 +0000"

message="Initial commit"
name="lrca"

git init "${name}"

cat $0 > "${name}/$(basename $0)"
chmod +x "${name}/$(basename $0)"

cd "${name}"
git reset $(echo "${message}" | git commit-tree 4b825dc642cb6eb9a060e54bf8d69288fbee4904)

git checkout -b this
git add $(basename $0)
git commit -m "Adds the recpie that created this repository."
git checkout master