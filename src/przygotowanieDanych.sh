#! /bin/bash

folder_dane="dane"
folder_temp="temp"
folder_json="json"
numer_pliku=0

mkdir -p $folder_temp
mkdir -p $folder_json
rm -f $folder_temp/*
rm -f $folder_json/*


pliki=($folder_dane/*.csv)
# printf '%s\n' "${pliki[@]}"

for plikcsv in "${pliki[@]}"
do
  echo "$plikcsv"
  printf 'Przygotowanie pliku: %s\n' "$plikcsv"
  cp $plikcsv $folder_temp/
  plikcsv2=${plikcsv:5}
  echo "$plikcsv2"
  sed -e 's/,/, /g' -i $folder_temp/$plikcsv2
  sed -e 's/,/, /g' -i $folder_temp/$plikcsv2

  printf 'Przetwarzanie CSVtoJSON: %s\n' "$folder_temp/$plikcsv2"
  javac src/CSVtoJSON.java
  java src/CSVtoJSON $folder_temp/$plikcsv2
  mv $folder_temp/$( basename $plikcsv .csv).json $folder_json/
  (( numer_pliku++ ))

done

echo "-----------"
echo "Przetworzono plików: $numer_pliku"
