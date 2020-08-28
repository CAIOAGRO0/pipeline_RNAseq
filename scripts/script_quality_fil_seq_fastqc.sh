#!/bin/bash
cd ~/Preproc_RNAseq/Samples_proc_fastp
~/Preproc_RNAseq/Tools/FastQC/./fastqc *.gz
mv *zip* ~/Preproc_RNAseq/3_Qual_control_2-2/FastQC/Rep_zip_FastQC_fastp
mv *html* ~/Preproc_RNAseq/3_Qual_control_2-2/FastQC/Rep_html_FastQC_fastp