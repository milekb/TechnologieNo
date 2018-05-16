#! /bin/bash

mkdir -p mongoTemp/rs1 mongoTemp/rs2 mongoTemp/rs3 mongoTemp/rs4
mongod --replSet weatherRP --logpath "mongoTemp/1.log" --dbpath mongoTemp/rs1 --port 27017 &
mongod --replSet weatherRP --logpath "mongoTemp/2.log" --dbpath mongoTemp/rs2 --port 27018 &
mongod --replSet weatherRP --logpath "mongoTemp/3.log" --dbpath mongoTemp/rs3 --port 27019 &
mongod --logpath "mongoTemp/4.log" --dbpath mongoTemp/rs4 --port 27020 &
sleep 6
exit 0
