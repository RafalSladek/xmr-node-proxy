#!/bin/bash

pm2 start proxy.js --name=proxy --log-date-format=YYYY-MM-DD HH:mm Z --watch
