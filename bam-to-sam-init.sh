#!/bin/bash

while getopts l:a:t: flag
do
  	case "${flag}" in
            l) list=${OPTARG};;
            a) age=${OPTARG};;
            t) tissue=${OPTARG};;
        esac
done
while read -r line
do
  	sbatch /scratch/thaight/GSE12597/bam-to-sam.sh -o /scratch/thaight/GSE12597/"$tissue"/"$age"/"$line"/output/circ/"$line"_denovo.sorted.sam -i>
done < "$list"




