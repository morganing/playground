#!bin/ksh

mkdir scripts/npm

cd scripts/npm

git init

git pull https://${1}@github.com/morganing/alminio.git

cp -a ../../src/alminio/. .

git add .

git commit -m "Auto-update from Travis CI"

git remote remove origin

git remote add origin https://morganing:$1@github.com/morganing/alminio.git

git push --set-upstream origin/master

git push --set-upstream https://$1@github.com/morganing/alminio.git/master
