#!/usr/bin/env sh

# abort on errors
set -e

rm -rf dist
yarn build
cd dist
echo 'christmas.martynaselli.com' > CNAME

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:notyoyoma/christmas.git master:gh-pages
