#!/bin/bash

for file in *
do

trimmedfilename="$(echo $file | sed 's/_precrispr.fasta//')"

cat $file | sed -E 's/GG/AGG/' > ../exomespostcrispr/$trimmedfilename"_postcrispr.fasta"

done
