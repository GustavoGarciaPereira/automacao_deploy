#!/usr/bin/env sh

if [[ $1 != "" ]]
then
    commit_rotulo=$1
else
    commit_rotulo="deploy"
fi

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

git init
git add -A

git commit -m "${commit_rotulo}"

git push -f git@github.com:GustavoGarciaPereira/exercicios-vue.git master:gh-pages

cd -