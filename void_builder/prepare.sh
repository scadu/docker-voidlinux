#!/bin/sh
REPO=https://github.com/scadu/void-packages
REPO_UPSTREAM=https://github.com/voidlinux/void-packages.git
if ! [ -d void-packages/.git ]; then
  git clone "$REPO"
fi
cd void-packages
git ls-remote --quiet --exit-code upstream 2>&1 /dev/null
if test $? = 0; then
  if [ $(git config remote.upstream.url) != "$REPO_UPSTREAM" ]; then
    git remote set-url upstream "$REPO_UPSTREAM"
  fi
else
  git remote add upstream "$REPO_UPSTREAM"
  git fetch upstream && ./xbps-src binary-bootstrap
fi
