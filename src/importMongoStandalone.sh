#! /bin/bash

javac -cp '.:lib/*' src/CreateDatabase.java
java -cp '.:lib/*' src/CreateDatabase

#mongod --logpath "mongoTemp/4.log" --dbpath mongoTemp/rs4 --port 27020 &


echo "Standalone time start:"

for f in json/*.json
do
  echo "Processing $f file...";
  mongoimport --host localhost:27020 -d weather --writeConcern $1 --collection ${f/.json/} --file $f --jsonArray
done
