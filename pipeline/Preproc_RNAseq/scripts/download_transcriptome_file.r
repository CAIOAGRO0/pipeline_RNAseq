# Defining working directory
setwd("~/Preproc_RNAseq/4_Quant_transc")

# Analysis directory
dir_quant <- "~/Preproc_RNAseq/4_Quant_transc"
list.files(dir_quant)

# Searching the mapping in the repository
reposit <- "ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_34/"
transcriptome_file <- paste0(reposit, "gencode.v34.transcripts.fa.gz")

# Mapping Download
download.file(transcriptome_file, "gencode.v34.transcripts.fa.gz")