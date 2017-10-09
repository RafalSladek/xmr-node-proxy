#!/bin/bash

git stash clear
git stash
git pull --rebase
git pop stash

pm2 stop proxy
pm2 delete proxy
pm2 start proxy.js --name=proxy --log-date-format=YYYY-MM-DD HH:mm Z --watch
pm2 save
