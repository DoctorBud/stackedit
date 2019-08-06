REMOTE=`git remote get-url --push origin`
echo "REMOTE: ${REMOTE}"

npm run buildgh

rm -rf /tmp/dist/
cp -r dist/ /tmp/dist/
cd /tmp/dist/
touch .nojekyll
git init
git add .
git commit -m "Initial commit"
git remote add origin ${REMOTE}
git push --force origin master:gh-pages
