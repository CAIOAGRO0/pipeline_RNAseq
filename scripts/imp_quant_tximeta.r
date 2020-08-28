# Defining working directory
setwd("~/Preproc_RNAseq/5_Gen_mat")

# Download annotation
reposit <- "ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_34/"
annot_file <- paste0(reposit, "gencode.v34.annotation.gtf.gz")
download.file(annot_file, "gencode.v34.annotation.gtf.gz")

dirquants <- "~/Preproc_RNAseq/4_Quant_transc/Quant_Salmon/"
dirannotation <- "~/Preproc_RNAseq/5_Gen_mat/"
dirindex <- "~/Preproc_RNAseq/4_Quant_transc/"

library(tximeta)
# Defining the paths of GENCODE references
indexDir <- file.path(dirindex, "gencode.v34_salmon_1.3.0")
gtfPath <- file.path(dirannotation, "gencode.v34.annotation.gtf.gz")
fastaFTP <- "ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_34/gencode.v34.transcripts.fa.gz"
makeLinkedTxome(indexDir=indexDir, source="GENCODE", organism="Homo sapiens", release="34", genome="GRCh38", fasta=fastaFTP, gtf=gtfPath, write=FALSE)

library(readr)
coldata <- read_csv("~/Preproc_RNAseq/Metadata/metadata.csv")

# Adding file names
coldata$names <- coldata$sample

# Adding quantifications path
coldata$files <- paste0(dirquants, coldata$names, "_quant/", "quant.sf")
all(file.exists(coldata$files))

se <- tximeta(coldata)

gse <- summarizeToGene(se)

save(se, file = "~/Preproc_RNAseq/5_Gen_mat/mat_se_tximeta.RData")
save(gse, file = "~/Preproc_RNAseq/5_Gen_mat/mat_gse_tximeta.RData")