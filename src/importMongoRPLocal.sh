#! /bin/bash

javac -cp '.:lib/*' src/CreateDatabaseRPLocal.java
java -cp '.:lib/*' src/CreateDatabaseRPLocal


echo "ReplicaSet Localhost time start:"
for f in json/*.json
do
  echo "Processing $f file...";
  mongoimport -d weatherRPLocal  --writeConcern $1 --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --collection ${f/.json/} --file $f --jsonArray
done
