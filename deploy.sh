#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run vuepress-starter:build

# navigate into the build output directory
cd vuepress-starter/.vuepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
## git push -f RedEchoes@github.com:RedEchoes.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/RedEchoes/test-documentation.git master:gh-pages

cd -