#!/bin/bash

function gitcreate() {
  python3 /mnt/c/Users/dhall/repo/create.py $2 $3 $1
  cd /mnt/c/Users/dhall/gitrepo/
  mkdir $1
  cd $1
  echo "# Introduction" >> README.md
  git init
  git add .
  git commit -m "Initial Repo Setup Commit"
  git remote add origin git@github.com:$2/$1.git
  git push -u origin master
}
