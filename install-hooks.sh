#!/bin/bash

read -p "This will overwrite the hooks in your .git folder to invoke git-lfs and swap licensed database files on every commit, proceed?"

cp hooks/* .git/hooks