#!/bin/bash
while read SAMP \n
do \n
echo "Processing sample ${SAMP}"
cutadapt -g GATCGGAAGAGCACACGTCTGAACTCCAGTCACNNNNNNNNNTCTCGTATGCCGTCTTCTGCTTG \
-m 20 \
-o ~/Preproc_RNAseq/Samples_proc_Cutadapt/${SAMP}_1.cutadapt.fastq.gz \
-p ~/Preproc_RNAseq/Samples_proc_Cutadapt/${SAMP}_2.cutadapt.fastq.gz \
~/Preproc_RNAseq/Samples/${SAMP}_1.fastq.gz \
~/Preproc_RNAseq/Samples/${SAMP}_2.fastq.gz
done < ~/Preproc_RNAseq/2_Filt_cleaning/samples_names.txt