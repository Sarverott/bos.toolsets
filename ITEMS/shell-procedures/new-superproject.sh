#!/usr/bin/env bash
cd ~/.__WORKSHOP/forge
mkdir "$1.git"
cd "$1.git"
git init --bare
exit
