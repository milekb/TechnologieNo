#! /bin/bash


touch temp/time.csv
touch temp/time2.csv
touch temp/time3.csv
touch temp/time4.csv
touch temp/time5.csv

(time ./src/$1 "$3") &> temp/time.csv
tail -n 3 temp/time.csv > temp/time2.csv


awk '              {
    for (i=1; i<=NF; i++)  {
        a[NR,i] = $i
    }
}
NF>p { p = NF }
END {
    for(j=1; j<=p; j++) {
        str=a[1,j]
        for(i=2; i<=NR; i++){
            str=str", "a[i,j];
        }
        print str
    }
}' temp/time2.csv > temp/time3.csv

sed -i "2s/0m//g" temp/time3.csv
sed -i "2s/s//g" temp/time3.csv

printf "type,writeConcern," > temp/time4.csv

if [[ "$2" = "standalone" && "$3" = "{w:1,j:false}" ]];
then
printf "\nStandalone,{w:1;j:false}," >> temp/time4.csv
paste temp/time4.csv temp/time3.csv >> temp/time5.csv

elif [[ "$2" = "standalone" && "$3" = "{w:1,j:true}" ]];
then
printf "\nStandalone,{w:1;j:true}," >> temp/time4.csv
paste temp/time4.csv temp/time3.csv >> temp/time5.csv

elif [[ "$2" = "standalone" && "$3" = "{w:2,j:false}" ]];
then
printf "\nStandalone,{w:2;j:false}," >> temp/time4.csv
paste temp/time4.csv temp/time3.csv >> temp/time5.csv

elif [[ "$2" = "standalone" && "$3" = "{w:2,j:true}" ]];
then
printf "\nStandalone,{w:2;j:true}," >> temp/time4.csv
paste temp/time4.csv temp/time3.csv >> temp/time5.csv

elif [[ "$2" = "replicaSet" && "$3" = "{w:1,j:false}" ]];
then
printf "\nreplicaSet,{w:1;j:false}," >> temp/time4.csv
paste temp/time4.csv temp/time3.csv >> temp/time5.csv

elif [[ "$2" = "replicaSet" && "$3" = "{w:1,j:true}" ]];
then
printf "\nreplicaSet,{w:1;j:true}," >> temp/time4.csv
paste temp/time4.csv temp/time3.csv >> temp/time5.csv

elif [[ "$2" = "replicaSet" && "$3" = "{w:2,j:false}" ]];
then
printf "\nreplicaSet,{w:2;j:false}," >> temp/time4.csv
paste temp/time4.csv temp/time3.csv >> temp/time5.csv

elif [[ "$2" = "replicaSet" && "$3" = "{w:2,j:true}" ]];
then
printf "\nreplicaSet,{w:2;j:true}," >> temp/time4.csv
paste temp/time4.csv temp/time3.csv >> temp/time5.csv

else
printf "Błąd składni\n"
fi

sed -e 's/\t//g' -i temp/time5.csv
sed -e 's/ //g' -i temp/time5.csv
# rm temp/time.csv temp/time2.csv temp/time3.csv temp/time4.csv

#javac CSVtoJSON.java
#java CSVtoJSON temp/time5.csv
#cat temp/time5.json
exit 0
