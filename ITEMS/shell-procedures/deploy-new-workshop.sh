#!/usr/bin/env bash

mkdir ~/.__WORKSHOP ~/.__WORKSHOP/forge ~/.__WORKSHOP/archive ~/.__WORKSHOP/notes ~/.__WORKSHOP/config
touch ~/.__WORKSHOP/bos-workshop.log
echo "HELLO_WORLD= new BlacksmithOrganisationSystem Workshop created" > ~/.__WORKSHOP/bos-workshop.log
echo "CREATE_TIME=$(date)" >> ~/.__WORKSHOP/bos-workshop.log
bosdirpath=$(pwd)
echo "CREATE_BASE=$bosdirpath" >> ~/.__WORKSHOP/bos-workshop.log
cat ~/.__WORKSHOP/bos-workshop.log
cd ~/.__WORKSHOP
git clone -l --no-hardlinks "$bosdirpath"
cp ./blacksmith-organization-system/shell-procedures/start-cli-interface.sh ./RUN
chmod 511 ./RUN
./RUN
exit
