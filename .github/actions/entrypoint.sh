#!/bin/sh

#if ! git config --get user.name; then
#    git config --global user.name "${GITHUB_ACTOR}"
#fi

#if ! git config --get user.email; then
#    git config --global user.email "${GITHUB_ACTOR}@users.noreply.github.com"
#fi

#remote_repo="https://x-access-token:${{ secrets.GITHUB_TOKEN }}@github.ibm.com/${GITHUB_REPOSITORY}.git"
#git remote rm origin
#git remote add origin "${remote_repo}"
mkdocs gh-deploy --config-file "${GITHUB_WORKSPACE}/mkdocs.yml"