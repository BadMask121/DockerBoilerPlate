#!/bin/bash

#install dependencies for project
npm install;

sleep 13;

echo "About to deploy prisma . . ."
prisma deploy;

sleep 1;

echo "";
echo "================================== PRISMA CLIENT HAS BEEN STARTED SUCCESSFULLY ==================================";
echo "";

exec /usr/sbin/init
