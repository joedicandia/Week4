#!/bin/bash

for file in exomes/*
do

trimmedfilename="$(echo $file | sed 's/.fasta//')"
while read motif
do
echo -n $motif
echo -n "	"
trimmedmotif="$(echo $motif | tr -d [:space:])"
grep -o $trimmedmotif $file | wc -l
done < "$1" | sort -k2,2nr | head -n 3 | cut -f1 >> $trimmedfilename"_topmotifs.fasta"

done
