#!/usr/bin/env bash

mkdir "$1" "$1/forge" "$1/archive" "$1/notes" "$1/config"
touch "$1/bos-workshop.log"
echo "HELLO_WORLD= new BlacksmithOrganisationSystem Workshop created" > "$1/bos-workshop.log"
echo "CREATE_TIME=$(date)" >> "$1/bos-workshop.log"
bosdirpath=$(pwd)
echo "CREATE_BASE=$bosdirpath" >> "$1/bos-workshop.log"
cat "$1/bos-workshop.log"
cd "$1"
git clone -l --no-hardlinks "$bosdirpath"
cp ./.BOS/dev/default-runner.sh ./RUN
chmod 511 ./RUN
./RUN
exit