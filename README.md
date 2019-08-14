# Author: Joe DiCandia
# Purpose: identify a list of suitable CRISPR gene candidates.

# Steps:

# Run ./copyExomes.sh clinical_data.txt and this will output the names of the files that need to be copied over from /home/rbif/week4/exomes.

# Copy each of the outputted files to the new exomes folder by using cp /home/rbif/week4/exomes/file.fasta ./exomes

# Next, from the week4 directory, run ./createCrisprReady.sh motif_list.txt and this will create a file for each exome titled "exome_topmotifs.txt" in the exomes directory.

# Copy the linearize.sh script to the exomes folder using cp linearize.sh ./exomes

# NOTE: I attempted to assign the top three motifs to a variable so that I could call that variable in the next script; however, I was unable and so I manually wrote in the motifs into the linearize.sh script.

# Cd into the exomes folder. Run ./linearize.sh on each fasta file with the file name as the first and only argument (for example, ./linearize.sh chicken.fasta). This will output each exome, now with gene headers containingthe top three motifs and their counts to the exomeslinear directory.

# Cd back to the week4 directory.

# Copy the identifyCrisprSite.sh script to the exomeslinear directory using cp identifyCrisprSite.sh ./exomeslinear

# Cd into the exomeslinear directory.

# Run ./identifyCrisprSite.sh with no arguments. This will search for only genes with NGG and 20 bases upstream and output each file to the exomesprecrispr directory. The script will name each file as "exomename_precrispr.fasta"

# Cd back to the week4 directory.

# Copy the editGenome.sh script to the exomesprecrispr directory using cp editGenome.sh ./exomesprecrispr.

# Cd into the exomesprecrispr directory

# Run ./editGenome.sh with no arguments. This will insert the letter A right before the NGG site in each file in the exomesprecrispr directory and output the results of each run to a file in the exomespostcrispr directory. The script will name each file as "exomename_postcrispr.fasta." 

# Run python exomeReport.py for a summary of the findings.
