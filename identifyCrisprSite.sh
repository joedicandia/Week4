#!/bin/bash

for file in *
do

trimmedfilename="$(echo $file | sed 's/_linearized//')"
cat  $file | awk '$2~/....................GG/ {print $0}' > ../exomesprecrispr/$trimmedfilename"_precrispr.fasta"

done
