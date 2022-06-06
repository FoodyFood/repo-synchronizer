#!/bin/bash
# 

if [ $# -eq 0 ]
  then
    echo "Run like this: ./sync.sh source destination"
    echo "For example: ./sync.sh git@github.com:FoodyFood/repo-synchronizer.git git@github.com:FoodyFood/repo-synchronizer-2.git"
    exit 1
fi

source="$1"
destination="$2"

echo "Source repo: $source"
echo "Destination repo: $destination"

mkdir -p ./repo-sync-temp

cd ./repo-sync-temp

git clone --mirror $source
git tag
git branch -a
git remote rm origin
git remote add origin $destination
git push origin --all
git push --tags
git remote set-head origin master

rm -rf ../repo-sync-temp
