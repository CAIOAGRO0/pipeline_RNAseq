#!/bin/bash
while read SAMP \n
do \n
echo "Preprocessing sample ${SAMP}"
~/Preproc_RNAseq/Tools/./fastp -i ~/Preproc_RNAseq/Samples/${SAMP}_1.fastq.gz \
-I ~/Preproc_RNAseq/Samples/${SAMP}_2.fastq.gz \
-o ~/Preproc_RNAseq/Samples_proc_fastp/${SAMP}_1.fastp.fastq.gz \
-O ~/Preproc_RNAseq/Samples_proc_fastp/${SAMP}_2.fastp.fastq.gz \
-j ${SAMP}.json -h ${SAMP}.html
done < ~/Preproc_RNAseq/2_Filt_cleaning/samples_names.txt
mv *.html* ~/Preproc_RNAseq/3_Qual_control_2-2/Fastp/Rep_html_fastp
mv *.json* ~/Preproc_RNAseq/3_Qual_control_2-2/Fastp/Rep_json_fastp