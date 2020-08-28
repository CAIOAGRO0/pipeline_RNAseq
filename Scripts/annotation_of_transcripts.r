library(AnnotationHub)
# Get row annotation (biotype, etc)
ah <- AnnotationHub()

# query(ah, "EnsDb")
edb <- query(ah, pattern = c("Homo sapiens", "EnsDb", 100))[[1]]
gns <- genes(edb)
EnsDbAnnotation <- as.data.frame(gns)
EnsDbAnnotation <- EnsDbAnnotation[,c("gene_id","symbol","gene_biotype","entrezid")]
dim(EnsDbAnnotation)
colnames(EnsDbAnnotation) <- c("ensemblid","symbol","gene_biotype","entrezid")

# Add row annotation
load("~/Preproc_RNAseq/")
nrow(gse)
gseAnnotation <- rowData(gse)

# Remove ENSEMBL version para tx2gene
rownames(gseAnnotation) <- stringr::str_replace(rownames(gseAnnotation), "\\...$", "")
rownames(gseAnnotation) <- stringr::str_replace(rownames(gseAnnotation), "\\..$", "")

# Match
all(rownames(gseAnnotation)%in%rownames(EnsDbAnnotation))
# [1] TRUE
rowAnnotation <- EnsDbAnnotation[rownames(gseAnnotation),]
rowAnnotation <- data.frame(gseAnnotation, rowAnnotation, stringsAsFactors = F)
rownames(rowAnnotation) <- rowAnnotation$gene_id
rowData(gse) <- rowAnnotation

# Saving the object
save(gse, file = "~/Preproc_RNAseq/5_Gen_mat/gse_noted.RData")