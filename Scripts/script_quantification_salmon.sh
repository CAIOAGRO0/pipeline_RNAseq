#!/bin/bash
while read SAMP \n
do \n
echo "Processing sample ${SAMP}"
salmon quant -i gencode.v34_salmon_1.3.0 -l A \
-1 ~/Preproc_RNAseq/Samples_proc_fastp/${SAMP}_1.fastp.fastq.gz \
-2 ~/Preproc_RNAseq/Samples_proc_fastp/${SAMP}_2.fastp.fastq.gz \
-p 4 --gcBias --validateMappings -o Quant_Salmon/${SAMP}_quant
done < ~/Preproc_RNAseq/2_Filt_cleaning/samples_names.txt