#!/bin/bash

trimmedfilename="$(echo $1 | sed 's/.fasta//')"
cat $1 | awk 'BEGIN{RS=">"}{print ">"$1"\t"$2;}' | awk '$2~/TTTTTACACTTC|TACACTTCTACA|CTTCAAAATTTT/ {print $0}' | awk '{print $1"TTTTTACACTTC_"gsub(/TTTTTACACTTC/,"")"\t"$2}' | awk '{print $1"TACACTTCTACA_"gsub(/TACACTTCTACA/,"")"\t"$2}' | awk '{print $1"CTTCAAAATTTT_"gsub(/CTTCAAAATTTT/,"")"\t"$2}' >> ../exomeslinear/$trimmedfilename"_linearized"

