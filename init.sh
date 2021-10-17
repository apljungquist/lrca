#!/usr/bin/env bash

set -eu

export GIT_AUTHOR_NAME="Alice"
export GIT_AUTHOR_EMAIL="alice@example.com"
export GIT_AUTHOR_DATE="Thu, 01 Jan 1970 00:00:00 +0000"
export GIT_COMMITTER_NAME="Bob"
export GIT_COMMITTER_EMAIL="bob@example.com"
export GIT_COMMITTER_DATE="Thu, 01 Jan 1970 00:00:00 +0000"

git reset "$(echo "Initial commit" | git commit-tree 4b825dc642cb6eb9a060e54bf8d69288fbee4904)"
git branch -M main
git push -u origin main