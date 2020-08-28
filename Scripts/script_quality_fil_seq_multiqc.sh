#!/bin/bash
cd ~/Preproc_RNAseq/3_Qual_control_2-2/FastQC/Rep_zip_FastQC_fastp
multiqc .
mv *_data* ~/Preproc_RNAseq/3_Qual_control_2-2/FastQC/Rep_MultiQC_FastQC_fastp
mv *html* ~/Preproc_RNAseq/3_Qual_control_2-2/FastQC/Rep_MultiQC_FastQC_fastp