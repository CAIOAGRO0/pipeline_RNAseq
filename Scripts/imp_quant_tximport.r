dirquant <- "~/Preproc_RNAseq/4_Quant_transc/Quant_Salmon/"
files <- list.files(dirquant)
files_import <- paste0(dirquant, files, "/quant.sf")
all(file.exists(files_import))


library(tximport)
mat_gse <- tximport(files_import, type = "salmon", tx2gene = tx2gene, ignoreAfterBar = TRUE)


names(mat_gse)
samples_names <- gsub("_quant" , "", files)
colnames(mat_gse$counts) <- samples_names
colnames(mat_gse$abundance) <- samples_names
colnames(mat_gse$length) <- samples_names

save(mat_gse, file = "~/Preproc_RNAseq/5_Gen_mat/mat_gse_tximport.RData")