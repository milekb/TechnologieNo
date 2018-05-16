#! /bin/bash

unzip historical-hourly-weather-data.zip -d dane/
sleep 1
./src/przygotowanieDanych.sh
sleep 1
./src/connect.sh
sleep 1

./src/importTimes.sh importMongoStandalone.sh standalone "{w:1,j:true}"
mongo weather --host localhost:27020 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoStandalone.sh standalone "{w:1,j:true}"
mongo weather --host localhost:27020 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoStandalone.sh standalone "{w:1,j:true}"
mongo weather --host localhost:27020 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoStandalone.sh standalone "{w:1,j:true}"
mongo weather --host localhost:27020 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoStandalone.sh standalone "{w:1,j:true}"
mongo weather --host localhost:27020 --eval "db.dropDatabase()"

./src/importTimes.sh importMongoStandalone.sh standalone "{w:1,j:false}"
mongo weather --host localhost:27020 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoStandalone.sh standalone "{w:1,j:false}"
mongo weather --host localhost:27020 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoStandalone.sh standalone "{w:1,j:false}"
mongo weather --host localhost:27020 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoStandalone.sh standalone "{w:1,j:false}"
mongo weather --host localhost:27020 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoStandalone.sh standalone "{w:1,j:false}"
mongo weather --host localhost:27020 --eval "db.dropDatabase()"

./src/importTimes.sh importMongoStandalone.sh standalone "{w:2,j:true}"
mongo weather --host localhost:27020 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoStandalone.sh standalone "{w:2,j:true}"
mongo weather --host localhost:27020 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoStandalone.sh standalone "{w:2,j:true}"
mongo weather --host localhost:27020 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoStandalone.sh standalone "{w:2,j:true}"
mongo weather --host localhost:27020 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoStandalone.sh standalone "{w:2,j:true}"
mongo weather --host localhost:27020 --eval "db.dropDatabase()"

./src/importTimes.sh importMongoStandalone.sh standalone "{w:2,j:false}"
mongo weather --host localhost:27020 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoStandalone.sh standalone "{w:2,j:false}"
mongo weather --host localhost:27020 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoStandalone.sh standalone "{w:2,j:false}"
mongo weather --host localhost:27020 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoStandalone.sh standalone "{w:2,j:false}"
mongo weather --host localhost:27020 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoStandalone.sh standalone "{w:2,j:false}"
mongo weather --host localhost:27020 --eval "db.dropDatabase()"


./src/importTimes.sh importMongoRPLocal.sh replicaSet "{w:1,j:true}"
mongo weatherRPLocal --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoRPLocal.sh replicaSet "{w:1,j:true}"
mongo weatherRPLocal --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoRPLocal.sh replicaSet "{w:1,j:true}"
mongo weatherRPLocal --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoRPLocal.sh replicaSet "{w:1,j:true}"
mongo weatherRPLocal --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoRPLocal.sh replicaSet "{w:1,j:true}"
mongo weatherRPLocal --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --eval "db.dropDatabase()"

./src/importTimes.sh importMongoRPLocal.sh replicaSet "{w:1,j:false}"
mongo weatherRPLocal --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoRPLocal.sh replicaSet "{w:1,j:false}"
mongo weatherRPLocal --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoRPLocal.sh replicaSet "{w:1,j:false}"
mongo weatherRPLocal --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoRPLocal.sh replicaSet "{w:1,j:false}"
mongo weatherRPLocal --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoRPLocal.sh replicaSet "{w:1,j:false}"
mongo weatherRPLocal --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --eval "db.dropDatabase()"

./src/importTimes.sh importMongoRPLocal.sh replicaSet "{w:2,j:true}"
mongo weatherRPLocal --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoRPLocal.sh replicaSet "{w:2,j:true}"
mongo weatherRPLocal --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoRPLocal.sh replicaSet "{w:2,j:true}"
mongo weatherRPLocal --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoRPLocal.sh replicaSet "{w:2,j:true}"
mongo weatherRPLocal --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoRPLocal.sh replicaSet "{w:2,j:true}"
mongo weatherRPLocal --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --eval "db.dropDatabase()"

./src/importTimes.sh importMongoRPLocal.sh replicaSet "{w:2,j:false}"
mongo weatherRPLocal --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoRPLocal.sh replicaSet "{w:2,j:false}"
mongo weatherRPLocal --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoRPLocal.sh replicaSet "{w:2,j:false}"
mongo weatherRPLocal --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoRPLocal.sh replicaSet "{w:2,j:false}"
mongo weatherRPLocal --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --eval "db.dropDatabase()"
./src/importTimes.sh importMongoRPLocal.sh replicaSet "{w:2,j:false}"
mongo weatherRPLocal --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --eval "db.dropDatabase()"


sed -e 's/type,writeConcern,real,user,sys//g' -i temp/time5.csv
sed -e '/^\s*$/d' -i  temp/time5.csv
sed -i '1s/^/type,writeConcern,real,user,sys\n/' temp/time5.csv



javac src/CSVtoJSON.java
java src/CSVtoJSON temp/time5.csv

cp temp/time5.json importTimes.json

mongoimport --host localhost:27020 -d weather --collection importTimes --file importTimes.json --jsonArray
mongoimport -d weatherRPLocal --host weatherRP/localhost:27017,localhost:27018,localhost:27019 --collection importTimes --file importTimes.json --jsonArray
