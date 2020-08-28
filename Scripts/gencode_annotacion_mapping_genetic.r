library(GenomicFeatures)
library(AnnotationDbi)
library(magrittr)

# Defining working directory
setwd("~/Preproc_RNAseq/5_Gen_mat")

# Download annotation
reposit <- "ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_34/"
annot_file <- paste0(reposit, "gencode.v34.annotation.gff3.gz")
download.file(annot_file, "gencode.v34.annotation.gff3.gz")

# TxDb from the GENCODE annotation
txdb <- makeTxDbFromGFF("gencode.v34.annotation.gff3.gz")

# Get transcript for genetic mapping
k <- keys(txdb, keytype = "TXNAME")
tx2gene <- ensembldb::select(txdb, k, "GENEID", "TXNAME")

# Preview
head(tx2gene) %>% tibble::as_tibble() %>% knitr::kable("html", booktabs = T) %>% kableExtra::kable_styling("striped")