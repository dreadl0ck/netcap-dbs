#!/bin/ash -e

## dependencies: apt install tree zip git git-fs
## on first use init lfs hooks with $ git lfs install
net util -generate-dbs

rm -rf dbs
mv netcap-dbs-generated/dbs dbs
mv netcap-dbs-generated/size .
rm -rf netcap-dbs-generated

now=$(date -u)
echo "$now" > VERSION

git add dbs
git add VERSION
git add size

git commit -m "[$now] Database Update"
git push
