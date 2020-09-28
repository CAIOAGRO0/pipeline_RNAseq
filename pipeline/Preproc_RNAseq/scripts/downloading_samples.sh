#!/bin/sh
# Download tool installation
sudo apt install curl
cd ~/Preproc_RNAseq/Tools
curl https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.9.6/sratoolkit.2.9.6-ubuntu64.tar.gz \
-o sratoolkit.2.9.6-ubuntu64.tar.gz
tar -xvzf sratoolkit.2.9.6-ubuntu64.tar.gz
# Downloading samples
cd ~/Preproc_RNAseq/Samples
~/Preproc_RNAseq/Tools/sratoolkit.2.9.6-ubuntu64/bin/fastq-dump \
3--split-files --gzip SRR7014291
~/Preproc_RNAseq/Tools/sratoolkit.2.9.6-ubuntu64/bin/fastq-dump --split-files \
--gzip SRR7014430
~/Preproc_RNAseq/Tools/sratoolkit.2.9.6-ubuntu64/bin/fastq-dump --split-files \
--gzip SRR7014308