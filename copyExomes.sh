#!/bin/bash

awk 'BEGIN{FS="\t"}; $3 > 19 && $3 < 31 && $5=="Sequenced"{print $6".fasta"}' $1 | cut -f 6

mkdir exomes

