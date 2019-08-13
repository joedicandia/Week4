#!/bin/bash

trimmedfilename="$(echo $1 | sed 's/.fasta//')"
cat $1 | awk 'BEGIN{RS=">"}{print ">"$1"\t"$2;}' | awk '$2~/TTTTTACACTTC|TACACTTCTACA|CTTCAAAATTTT/ {print $0}' | awk '{print $0":	TTTTTACACTTC_"gsub(/TTTTTACACTTC/,"")}' | awk '{print $0", TACACTTCTACA_"gsub(/TACACTTCTACA/,"")}' | awk '{print $0", CTTCAAAATTTT_"gsub(/CTTCAAAATTTT/,"")}'

