hugo -D
cd public
git init
git remote add origin git@github.com:FuShaoLei/CheetSheet.git
git add .
git commit -m 'update blog'
git push -f --set-upstream origin master:gh-page
cd ..
rm -rf public
git add .
git commit -m "update"
git push
