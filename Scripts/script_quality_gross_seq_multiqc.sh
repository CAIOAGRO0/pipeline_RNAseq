#!/bin/bash
cd ~/Preproc_RNAseq/1_Qual_control_2-1/FastQC/Rep_zip_FastQC
multiqc .
mv *_data* ~/Preproc_RNAseq/1_Qual_control_2-1/FastQC/Rep_MultiQC_FastQC
mv *html* ~/Preproc_RNAseq/1_Qual_control_2-1/FastQC/Rep_MultiQC_FastQC