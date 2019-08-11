#!/bin/bash

for file in /home/dicaj/week4/newexomes/*
do

while read motif
do
echo -n $motif
echo -n "	"
trimmedmotif="$(echo $motif | tr -d [:space:])"
grep -o $trimmedmotif $file | wc -l
done < "$1" | sort -k2,2nr | head -n 3 >> $file"_topmotifs.fasta"

done
