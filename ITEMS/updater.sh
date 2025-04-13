#!/usr/bin/env bash

git add *
git status
git commit -m "$1"

npm version patch

git push