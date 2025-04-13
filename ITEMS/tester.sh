#!/usr/bin/env bash

npm test

git add *
git status
git commit -m "$1"

npm version patch

git push