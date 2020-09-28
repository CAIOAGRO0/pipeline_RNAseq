# Defining analysis directory
setwd("~/Preproc_RNAseq/2_Filt_cleaning")

# Informing the directory path with the samples
dir1 <- "~/Preproc_RNAseq/Samples"
list.files(dir1)

# Informing the path of the analysis directory
dir2 <- "~/Preproc_RNAseq/2_Filt_cleaning"
list.files(dir2)

# Generating the .txt file
files <- list.files(paste0(dir1))
samples_names <- unique(gsub("_..fastq.gz", "", files))
write.table(samples_names, "samples_names.txt", quote = FALSE, row.names = FALSE, col.names = FALSE)