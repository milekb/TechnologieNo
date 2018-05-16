#! /bin/bash

./src/initializeMongo.sh
sleep 1
mongo src/init_replica.js
