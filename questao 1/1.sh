#!/usr/bin/env bash

sed -E -e 's/[0-9]+/:/2' -e '1,2d' < nomes.txt > temp.txt

echo -e "Ranking meninos \n" > R_meninos.txt
awk 'BEGIN  {FS=":"} {print $1}' < temp.txt >> R_meninos.txt

echo -e "Ranking meninas \n" > R_meninas.txt
awk 'BEGIN  {FS=":"} {print NR""$2}' < temp.txt >> R_meninas.txt

rm temp.txt