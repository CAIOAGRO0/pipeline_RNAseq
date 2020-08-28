#!/bin/sh
# System Libraries
sudo apt-get install libssl-dev openssl libcurl4 libcurl4-openssl-dev default-jdk gdebi libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 xml2 libxml2-dev libtiff-dev libfftw3-dev

# FastQC
cd ~/Preproc_RNAseq/Tools
# FastQC v0.11.9
wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.9.zip \
--no-check-certificate
unzip fastqc_v0.11.9
cd FastQC/
chmod 755 fastqc

# MultiQC
sudo apt install python3-pip
sudo pip3 install multiqc

# fastp
cd ~/Preproc_RNAseq/Tools
wget http://opengene.org/fastp/fastp
chmod a+x ./fastp

# Cutadapt
sudo apt install cutadapt

# Salmon
# miniconda library
cd ~/Preproc_RNAseq/Tools
wget https://repo.anaconda.com/miniconda/Miniconda3-py37_4.8.3-Linux-x86_64.sh
bash Miniconda3-py37_4.8.3-Linux-x86_64.sh

# -- Restart the terminal --
# Salmon
conda config --add channels conda-forge
conda config --add channels bioconda
conda create -n salmon salmon
conda config --set auto_activate_base False

# R
# Installation of R (v. 4.0)
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo apt update
sudo apt install r-base r-base-core r-recommended r-base-dev

# RStudio
sudo apt-get install gdebi
cd ~/Preproc_RNAseq/Tools
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.3.959-amd64.deb
sudo gdebi rstudio-1.3.959-amd64.deb

# R Libraries
Rscript -e 'install.packages(c("magrittr", "tibble", "knitr", "kableExtra", "readr", "BiocManager"))
BiocManager::install(c("rnaseqGene", "tximport", "tximeta","GenomicFeatures", "ensembldb", "AnnotationDbi","AnnotationHub"))'