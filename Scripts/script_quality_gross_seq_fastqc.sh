#!/bin/bash
cd ~/Preproc_RNAseq/Samples
~/Preproc_RNAseq/Tools/FastQC/./fastqc *.gz
mv *zip* ~/Preproc_RNAseq/1_Qual_control_2-1/FastQC/Rep_zip_FastQC
mv *html* ~/Preproc_RNAseq/1_Qual_control_2-1/FastQC/Rep_html_FastQC