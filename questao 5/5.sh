#!/usr/bin/env bash
awk '{gsub(/./,"& ", $1)} 1' $1 > contacts_number_separated

awk '{ s_name=12; e_name=NF; for (i=s_name;i <= NF; i++){if(i == 12){name=""}name=name" "$i} 
printf "(%s%s) %s %s%s%s%s-%s%s%s%s %s\n", $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,name }' contacts_number_separated > contacts_formatted

cat contacts_formatted > $1
rm "contacts_number_separated"
rm "contacts_formatted"