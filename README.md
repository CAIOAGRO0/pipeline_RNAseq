# Pipeline - Preprocessing of RNA-seq data

# Introduction
The sequencing of RNA through next generation sequencers (NGS), allows the study of the abundance of genes, as well as the identification of differentially expressed genes. The output of this type of sequencing is called RNA-seq and is currently the main technique used for analysis of RNA expression. RNA-seq may suffer contamination of primers during the preparation and sequencing of the cDNA library, as well as obtain inaccurate determinations of nucleotide sequences. Quality control and pre-processing of sequencing data, especially NGS, has gained prominence due to its use. In this work we present a pipeline to estimate the levels of RNA transcription in samples from the GEO repository.

# Installation
The **Pipeline** directory contains the files **Pipeline_preprocessing_of_RNA-seq_data.pdf** and **Pipeline_preprocessing_of_RNA-seq_data.Rmd** that explain the installation of each tool.

# Quick start

i. Download the repository:
wget https://github.com/souzajs/pipeline_pre-processing_RNAseq_data/archive/master.zip

ii. Extract the files to your home folder directory (example: "/home/jean");
unzip master.zip
cd pipeline_pre-processing_RNAseq_data-master

ii. Download the samples or place the samples you want to work in the directory **~/pipeline_pre-processing_RNAseq_data-master/pipeline/Preproc_RNAseq/Samples**;

iii. Install the necessary tools;

iv. Follow the steps for each analysis. **NOTE:** Make changes to the scripts according to the name of your samples.

# Ready scripts
The scripts for each analysis step are in the **~/pipeline_pre-processing_RNAseq_data-master/pipeline/Preproc_RNAseq/scripts** directory. If you do not want to generate the scripts during the analysis, download each script and place it in your analysis directory. Make changes to the scripts as needed.
