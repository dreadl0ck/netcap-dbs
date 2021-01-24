#!/bin/bash

read -p "This will overwrite the hooks in your .git folder to invoke git-lfs and swap licensed database files on every commit, proceed?"

echo "git lfs install"
git lfs install

echo "cp hooks/* .git/hooks"
cp hooks/* .git/hooks

echo "done"